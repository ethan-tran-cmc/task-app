import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_todo_app/presentation/base/widget/app_base_dialog.dart';
import 'package:flutter_todo_app/presentation/base/widget/task_field.dart';
import 'package:flutter_todo_app/presentation/home/home_cubit.dart';
import 'package:flutter_todo_app/presentation/home/home_state.dart';
import 'package:flutter_todo_app/router/app_router.dart';
import 'package:flutter_todo_app/utilities/constants/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../injectable/injection.dart';
import '../../utilities/constants/text_style.dart';
import 'widget/filter_section.dart';
import 'widget/home_tasks.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _bloc = getIt<HomeCubit>();
  final _searchController = TextEditingController();

  @override
  void initState() {
    _bloc.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state.status == HomePageStatus.getDataInProgress) {
          EasyLoading.show();
        } else {
          EasyLoading.dismiss();
        }
      },
      bloc: _bloc,
      builder: (context, state) => GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(
              color: primaryColor,
            ),
            title: Text(
              AppLocalizations.of(context)!.todoApp,
              style: AppTextStyle.s25w700.copyWith(color: Colors.black),
            ),
            backgroundColor: const Color(0xFFFAFBFE),
            elevation: 0,
          ),
          backgroundColor: const Color(0xFFFAFBFE),
          floatingActionButton: FloatingActionButton(
            backgroundColor: primaryColor,
            onPressed: () async {
              final result =
                  await AutoRouter.of(context).push(const TaskCreateRoute());
              if (result == true) {
                _bloc.getData();
              }
            },
            child: const Icon(Icons.add),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                TaskField(
                  label: AppLocalizations.of(context)!.search,
                  controller: _searchController,
                  prefixIcon: const Icon(FontAwesomeIcons.magnifyingGlass),
                  onChangeCallback: (value) => _bloc.searchTask(value),
                ),
                const SizedBox(
                  height: 10,
                ),
                FilterSection(
                  sortBy: state.sortBy,
                  sortType: state.sortType,
                  onSortByTapCallBack: (value) {
                    _searchController.text = '';
                    _bloc.sortBy = value;
                  },
                  onSortTypeTapCallBack: (value) {
                    _searchController.text = '';
                    _bloc.sortType = value;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: HomeTasks(
                    tasks: state.listTask,
                    onCheckBoxPressed: (statusValue, taskEntities) =>
                        _bloc.updateStatus(
                      taskEntities: taskEntities,
                      statusValue: statusValue,
                    ),
                    onDeletePressed: (taskEntities) async {
                      AppBaseDialog(
                        context: context,
                        content:
                            AppLocalizations.of(context)!.confirmDeleteTask,
                        type: TypeDialogPlatform.confirm,
                        onOkTap: () =>
                            _bloc.deleteTask(taskEntities: taskEntities),
                      ).show();
                    },
                    onItemTap: (taskEntities) async {
                      final result = await AutoRouter.of(context)
                          .push(TaskUpdateRoute(taskEntities: taskEntities));
                      if (result == true) {
                        _bloc.getData();
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
