import 'package:dio/dio.dart';

import '../models/to_do_model.dart';

class ToDoRepository {
  Dio dio;
  final url = 'https://jsonplaceholder.typicode.com/todos';

  ToDoRepository([Dio client]) : dio = client ?? Dio();

  Future <List<ToDoModel>> fetchToDoS() async{
    final response = await dio.get(url);
    final list = response.data as List;

    return list.map((json) => ToDoModel.fromJson(json)).toList();
  }
}
