import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_todo_app/domain/entities/task_entities.dart';
import 'package:flutter_todo_app/domain/usecase/firebase_auth/get_current_user_usecase.dart';
import 'package:flutter_todo_app/domain/usecase/firebase_auth/sign_in_anonymously_usercase.dart';
import 'package:flutter_todo_app/domain/usecase/task/delete_task_usecase.dart';
import 'package:flutter_todo_app/domain/usecase/task/get_list_task_usecase.dart';
import 'package:flutter_todo_app/domain/usecase/task/update_task_usecase.dart';
import 'package:flutter_todo_app/presentation/home/home_cubit.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'home_bloc_test.mocks.dart';

@GenerateMocks([
  GetCurrentUserUseCase,
  SignInAnonymouslyUseCase,
  UpdateTaskUseCase,
  DeleteTaskUseCase,
  GetListTaskUseCase,
], customMocks: [
  MockSpec<User>(onMissingStub: OnMissingStub.returnDefault),
])
void main() {
  late MockGetListTaskUseCase getListTaskUseCase;
  late MockGetCurrentUserUseCase getCurrentUserUseCase;
  late MockSignInAnonymouslyUseCase signInAnonymouslyUseCase;
  late MockUpdateTaskUseCase updateTaskUseCase;
  late MockDeleteTaskUseCase deleteTaskUseCase;
  late MockUser user;
  late HomeCubit homeCubit;
  group(
    'Test Home Cubit',
    () {
      setUp(
        () {
          getListTaskUseCase = MockGetListTaskUseCase();
          getCurrentUserUseCase = MockGetCurrentUserUseCase();
          signInAnonymouslyUseCase = MockSignInAnonymouslyUseCase();
          updateTaskUseCase = MockUpdateTaskUseCase();
          deleteTaskUseCase = MockDeleteTaskUseCase();
          user = MockUser();
          homeCubit = HomeCubit(
            getListTaskUseCase,
            getCurrentUserUseCase,
            signInAnonymouslyUseCase,
            updateTaskUseCase,
            deleteTaskUseCase,
          );
        },
      );
      test(
        'Init Data',
        () async {
          mockGetCurrentUser(getCurrentUserUseCase, user);
          mockGetList(getListTaskUseCase);
          await homeCubit.init();
          expect(homeCubit.state.listTask.length, 3);
        },
      );

      test(
        'Get Data',
        () async {
          mockGetCurrentUser(getCurrentUserUseCase, user);
          mockGetList(getListTaskUseCase);
          await homeCubit.getData();
          expect(homeCubit.state.listTask.length, 3);
        },
      );

      test(
        'Update Task',
        () async {
          mockUpdateUser(updateTaskUseCase, getListTaskUseCase);

          expect(
            () async => await homeCubit.updateStatus(
              taskEntities: TaskEntities(
                id: '1',
                title: 'Task title 1',
                description: 'Task description 1',
                createdAt: DateTime.now(),
                image: 'Task image 1',
                status: TaskStatus.inProgress,
                userId: 'userId',
              ),
              statusValue: true,
            ),
            isA<void>(),
          );
        },
      );
    },
  );
}

void mockGetList(MockGetListTaskUseCase getListTaskUseCase) async {
  when(getListTaskUseCase.run(any)).thenAnswer(
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
}

void mockGetCurrentUser(
    MockGetCurrentUserUseCase getCurrentUserUseCase, MockUser user) {
  when(getCurrentUserUseCase.run()).thenReturn(user);
}

void mockUpdateUser(MockUpdateTaskUseCase updateTaskUseCase,
    MockGetListTaskUseCase getListTaskUseCase) {
  final taskEntities = TaskEntities(
    id: '1',
    title: 'Task title 1',
    description: 'Task description 1',
    createdAt: DateTime.now(),
    image: 'Task image 1',
    status: TaskStatus.inProgress,
    userId: 'userId',
  );
  when(updateTaskUseCase.run(taskEntities)).thenAnswer(
    (_) => Future.value(),
  );
  when(getListTaskUseCase.run(any)).thenAnswer(
    (_) => Future.value(
      [
        TaskEntities(
          id: '1',
          title: 'Task title 1',
          description: 'Task description 1',
          createdAt: DateTime.now(),
          image: 'Task image 1',
          status: TaskStatus.completed,
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
}
