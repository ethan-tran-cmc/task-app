import 'package:flutter/material.dart';
import 'package:flutter_todo_app/domain/entities/task_entities.dart';
import 'package:flutter_todo_app/presentation/home/widget/task.dart';

class HomeTasks extends StatelessWidget {
  const HomeTasks({
    required this.tasks,
    required this.onCheckBoxPressed,
    required this.onDeletePressed,
    required this.onItemTap,
    Key? key,
  }) : super(key: key);

  final List<TaskEntities> tasks;

  final Function(bool? statusValue, TaskEntities taskEntities)
      onCheckBoxPressed;

  final Function(TaskEntities taskEntities) onDeletePressed;

  final Function(TaskEntities taskEntities) onItemTap;

  @override
  Widget build(BuildContext context) {
    return tasks.isNotEmpty
        ? ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              final item = tasks[index];
              return Task(
                task: item,
                checkBoxPressed: (bool? value) {
                  onCheckBoxPressed(value, item);
                },
                deletePressed: () {
                  onDeletePressed(item);
                },
                onItemTap: () => onItemTap(item),
              );
            },
          )
        : const SizedBox();
  }
}
