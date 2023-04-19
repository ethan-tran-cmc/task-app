import 'package:mockito/annotations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_todo_app/data/network/firebase/firestore_service.dart';
import 'package:flutter_todo_app/data/repositories/task_repository_imp.dart';
import 'package:flutter_todo_app/domain/entities/task_entities.dart';
import 'package:mockito/mockito.dart';

import 'task_repository_test.mocks.dart';

@GenerateMocks([FirestoreService])
void main() {
  group(
    'Test the Task repository',
    () {
      final firestoreService = MockFirestoreService();
      final repository = TaskRepositoryImplement(firestoreService);

      test(
        'Get Task',
        () async {
          when(repository.getTasks('userId')).thenAnswer(
            (_) => Future.value(
              [
                TaskEntities(
                  id: '1',
                  title: 'Task title 1',
                  description: 'Task description 1',
                  createdAt: DateTime.now(),
                  image: 'Task image 1',
                  status: TaskStatus.inProgress,
                  userId: 'userId',
                ),
                TaskEntities(
                  id: '2',
                  title: 'Task title 2',
                  description: 'Task description 2',
                  createdAt: DateTime.now(),
                  image: 'Task image 2',
                  status: TaskStatus.inProgress,
                  userId: 'userId',
                ),
                TaskEntities(
                  id: '3',
                  title: 'Task title 3',
                  description: 'Task description 3',
                  createdAt: DateTime.now(),
                  image: 'Task image 3',
                  status: TaskStatus.inProgress,
                  userId: 'userId',
                ),
              ],
            ),
          );
          final result = await repository.getTasks('userId');
          expect(result.length, 3);
        },
      );

      test(
        'Create Task',
        () async {
          when(repository.createTask(
            TaskEntities(
              id: '1',
              title: 'Task title 1',
              description: 'Task description 1',
              createdAt: DateTime.now(),
              image: 'Task image 1',
              status: TaskStatus.inProgress,
              userId: 'userId',
            ),
          )).thenAnswer(
            (_) => Future.value(),
          );
          expect(
            () async => await repository.createTask(
              TaskEntities(
                id: '1',
                title: 'Task title 1',
                description: 'Task description 1',
                createdAt: DateTime.now(),
                image: 'Task image 1',
                status: TaskStatus.inProgress,
                userId: 'userId',
              ),
            ),
            isA<void>(),
          );
        },
      );

      test(
        'Delete Task',
        () async {
          when(repository.deleteTask(
            TaskEntities(
              id: '1',
              title: 'Task title 1',
              description: 'Task description 1',
              createdAt: DateTime.now(),
              image: 'Task image 1',
              status: TaskStatus.inProgress,
              userId: 'userId',
            ),
          )).thenAnswer(
            (_) => Future.value(),
          );
          expect(
            () async => await repository.deleteTask(
              TaskEntities(
                id: '1',
                title: 'Task title 1',
                description: 'Task description 1',
                createdAt: DateTime.now(),
                image: 'Task image 1',
                status: TaskStatus.inProgress,
                userId: 'userId',
              ),
            ),
            isA<void>(),
          );
        },
      );

      test(
        'Update Task',
        () async {
          when(repository.updateTask(
            TaskEntities(
              id: '1',
              title: 'Task title 1',
              description: 'Task description 1',
              createdAt: DateTime.now(),
              image: 'Task image 1',
              status: TaskStatus.inProgress,
              userId: 'userId',
            ),
          )).thenAnswer(
            (_) => Future.value(),
          );
          expect(
            () async => await repository.updateTask(
              TaskEntities(
                id: '1',
                title: 'Task title 1',
                description: 'Task description 1',
                createdAt: DateTime.now(),
                image: 'Task image 1',
                status: TaskStatus.inProgress,
                userId: 'userId',
              ),
            ),
            isA<void>(),
          );
        },
      );
    },
  );
}
