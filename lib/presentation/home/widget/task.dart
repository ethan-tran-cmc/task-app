import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_todo_app/domain/entities/task_entities.dart';
import 'package:flutter_todo_app/utilities/constants/text_style.dart';
import 'package:intl/intl.dart';

class Task extends StatelessWidget {
  Task({
    required this.task,
    required this.checkBoxPressed,
    required this.deletePressed,
    required this.onItemTap,
    Key? key,
  }) : super(key: key);

  final TaskEntities task;

  final Function(bool? value) checkBoxPressed;

  final VoidCallback deletePressed;

  final VoidCallback onItemTap;

  // final Function deletePressed;

  final dateFormat = DateFormat('dd/MM/y');

  @override
  Widget build(BuildContext context) {
    final isCompleted = task.status == TaskStatus.completed;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => onItemTap(),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Checkbox(
                value: isCompleted,
                onChanged: (value) {
                  checkBoxPressed(value);
                },
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      task.title,
                      style: AppTextStyle.s18w700.copyWith(
                        decoration:
                            isCompleted ? TextDecoration.lineThrough : null,
                      ),
                    ),
                    Text(
                      task.description,
                      style: AppTextStyle.textContent.copyWith(
                        decoration:
                            isCompleted ? TextDecoration.lineThrough : null,
                      ),
                    ),
                    Text(
                      dateFormat.format(task.createdAt),
                      style: AppTextStyle.textContent.copyWith(
                        decoration:
                            isCompleted ? TextDecoration.lineThrough : null,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (task.image.isNotEmpty)
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Image.memory(
                            const Base64Decoder().convert(
                              task.image,
                            ),
                            gaplessPlayback: true,
                          ),
                        ),
                      ),
                    // Image
                    IconButton(
                      icon: const Icon(
                        Icons.delete_outline,
                        color: Colors.red,
                      ),
                      onPressed: () async {
                        deletePressed();
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
