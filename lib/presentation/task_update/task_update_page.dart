import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_todo_app/domain/entities/task_entities.dart';
import 'package:flutter_todo_app/presentation/base/widget/task_field.dart';

import 'package:flutter_todo_app/presentation/base/widget/image_item.dart';
import 'package:flutter_todo_app/presentation/task_update/task_update_cubit.dart';
import 'package:flutter_todo_app/presentation/task_update/task_update_state.dart';
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
class TaskUpdatePage extends StatefulWidget {
  const TaskUpdatePage({
    required this.taskEntities,
    Key? key,
  }) : super(key: key);

  final TaskEntities taskEntities;

  @override
  State<TaskUpdatePage> createState() => _TaskUpdatePageState();
}

class _TaskUpdatePageState extends State<TaskUpdatePage> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _dateController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _bloc = getIt<TaskUpdateCubit>();
  DateTime? selectedDate;
  final dateFormat = DateFormat('dd/MM/yy');

  @override
  void initState() {
    super.initState();
    _initFormValue();
  }

  @override
  void dispose() {
    super.dispose();
    _titleController.dispose();
    _descriptionController.dispose();
    _dateController.dispose();
  }

  void _initFormValue() {
    _titleController.text = widget.taskEntities.title;
    _descriptionController.text = widget.taskEntities.description;
    _dateController.text = dateFormat.format(widget.taskEntities.createdAt);
    selectedDate = widget.taskEntities.createdAt;
    _bloc.updateImagePath(
      imagePath: widget.taskEntities.image,
      isBase64Image: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TaskUpdateCubit, TaskUpdateState>(
      listener: (context, state) {
        if (state.status == TaskUpdatePageStatus.updateTaskInProgress) {
          EasyLoading.show();
        } else {
          EasyLoading.dismiss();
          if (state.status == TaskUpdatePageStatus.updateTaskSuccess) {
            EasyLoading.showSuccess(
                AppLocalizations.of(context)!.updateTaskSuccess);
            AutoRouter.of(context).pop(true);
          } else if (state.status == TaskUpdatePageStatus.updateTaskError) {
            EasyLoading.showSuccess(AppLocalizations.of(context)!.failError);
          }
        }
      },
      bloc: _bloc,
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Text(
            AppLocalizations.of(context)!.updateTask,
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
              _bloc.updateTask(
                _titleController.text,
                _descriptionController.text,
                selectedDate!,
                widget.taskEntities,
              );
            }
          },
          label: Text(
            AppLocalizations.of(context)!.updateTask,
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
                  validator: Validatorless.multiple(
                    [
                      Validatorless.required(
                          AppLocalizations.of(context)!.requiredField),
                      Validatorless.between(1, 100, "errorMessage")
                    ],
                  ),
                ),
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
                          _bloc.updateImagePath(imagePath: '');
                        },
                        isMemoryImage: state.isBase64Image,
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
      _bloc.updateImagePath(imagePath: image.path);
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
