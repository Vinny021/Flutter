import 'package:flutter_test/flutter_test.dart';
import 'package:to_do_list/app/repositories/to_do_repository.dart';

main() {
  final repository = ToDoRepository();
  test('Espera uma lista de ToDo Models', () async {
    final list = await repository.fetchToDoS();
    print(list);
    expect(list[1].title, 'quis ut nam facilis et officia qui');
  });
}