import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_todo_app/presentation/base/widget/task_field.dart';
import 'package:flutter_todo_app/presentation/task_create/task_create_cubit.dart';
import 'package:flutter_todo_app/presentation/task_create/task_create_state.dart';
import 'package:flutter_todo_app/presentation/base/widget/image_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:validatorless/validatorless.dart';

import '../../injectable/injection.dart';
import '../../utilities/constants/colors.dart';
import '../../utilities/constants/text_style.dart';
import '../base/widget/app_base_dialog.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@RoutePage()
class TaskCreatePage extends StatefulWidget {
  const TaskCreatePage({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskCreatePage> createState() => _TaskCreatePageState();
}

class _TaskCreatePageState extends State<TaskCreatePage> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _dateController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _taskCreateCubit = getIt<TaskCreateCubit>();
  DateTime? selectedDate;

  @override
  void initState() {
    super.initState();
    _taskCreateCubit.init();
  }

  @override
  void dispose() {
    super.dispose();
    _titleController.dispose();
    _descriptionController.dispose();
    _dateController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TaskCreateCubit, TaskCreateState>(
      listener: (context, state) {
        if (state.status == TaskCreatePageStatus.createTaskInProgress) {
          EasyLoading.show();
        } else {
          EasyLoading.dismiss();
          if (state.status == TaskCreatePageStatus.createTaskSuccess) {
            EasyLoading.showSuccess(
                AppLocalizations.of(context)!.createTaskSuccess);
            AutoRouter.of(context).pop(true);
          } else if (state.status == TaskCreatePageStatus.createTaskError) {
            EasyLoading.showSuccess(AppLocalizations.of(context)!.failError);
          }
        }
      },
      bloc: _taskCreateCubit,
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Text(
            AppLocalizations.of(context)!.createTask,
            style: AppTextStyle.s25w700.copyWith(color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: () {
                AutoRouter.of(context).pop();
              },
              icon: const Icon(
                Icons.close,
                color: primaryColor,
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: primaryColor,
          onPressed: () {
            final formValid = _formKey.currentState?.validate() ?? false;

            if (formValid) {
              _taskCreateCubit.createTask(_titleController.text,
                  _descriptionController.text, selectedDate!);
            }
          },
          label: Text(
            AppLocalizations.of(context)!.createTask,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Form(
          key: _formKey,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TaskField(
                    label: AppLocalizations.of(context)!.titleLabel,
                    controller: _titleController,
                    maxLength: 100,
                    validator: Validatorless.multiple([
                      Validatorless.required(
                          AppLocalizations.of(context)!.requiredField),
                      Validatorless.between(1, 100, "errorMessage")
                    ])),
                const SizedBox(height: 20),
                TaskField(
                  label: AppLocalizations.of(context)!.descriptionLabel,
                  controller: _descriptionController,
                  maxLines: 2,
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () async {
                    var lastDate = DateTime.now();
                    lastDate = lastDate.add(const Duration(days: 10 * 365));
                    final dateFormat = DateFormat('dd/MM/yy');

                    selectedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: lastDate,
                    );

                    if (selectedDate != null) {
                      _dateController.text = dateFormat.format(selectedDate!);
                    }
                  },
                  behavior: HitTestBehavior.opaque,
                  child: TaskField(
                    label: AppLocalizations.of(context)!.dateLabel,
                    controller: _dateController,
                    enabled: false,
                    validator: Validatorless.required(
                      AppLocalizations.of(context)!.requiredField,
                    ),
                    prefixIcon: const Icon(
                      FontAwesomeIcons.calendar,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                IconButton(
                  onPressed: () => _showGalleryImagePicker(),
                  icon: const Icon(
                    FontAwesomeIcons.image,
                  ),
                ),
                const SizedBox(height: 20),
                state.imagePath.isNotEmpty
                    ? ImageItem(
                        imagePath: state.imagePath,
                        aspectRatio: 16 / 9,
                        onDeleteTap: () {
                          _taskCreateCubit.updateImagePath = '';
                        },
                      )
                    : const SizedBox()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _showGalleryImagePicker() async {
    try {
      final image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        imageQuality: 10,
        maxWidth: 400,
      );
      if (image == null) return;
      _taskCreateCubit.updateImagePath = image.path;
    } on PlatformException catch (_) {
      var status = await Permission.photos.status;

      if (status.isDenied || status.isPermanentlyDenied) {
        if (!mounted) return;
        AppBaseDialog(
          content: AppLocalizations.of(context)!.photoPermission,
          context: context,
        ).show();
        return;
      }
    }
  }
}
