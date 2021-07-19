import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:to_do_list/app/controllers/home_controller.dart';
import 'package:to_do_list/app/models/to_do_model.dart';
import 'package:to_do_list/app/repositories/to_do_repository.dart';

class ToDoRepositoryMock extends Mock implements ToDoRepository{}
main() {
  final repository = ToDoRepositoryMock();
  final controller = HomeController(repository);

  test('Verifica se ocorre o preenchimento da lista', () async {
    when(repository.fetchToDoS()).thenAnswer((_) async => [ToDoModel()]);

    expect(controller.state, HomeState.start);

    await controller.start();
    expect(controller.state, HomeState.success);

    expect(controller.toDos.isNotEmpty, true);
  });

  test('Verifica se ele muda o estado em caso de um erro', () async {
    when(repository.fetchToDoS()).thenThrow(Exception());

    expect(controller.state, HomeState.start);

    await controller.start();
    expect(controller.state, HomeState.error);
  });
}