import 'package:flutter/cupertino.dart';
import 'package:to_do_list/app/models/to_do_model.dart';
import 'package:to_do_list/app/repositories/to_do_repository.dart';

class HomeController {
  HomeController([ToDoRepository repository]) : _repository = repository ?? ToDoRepository(); 
  
  List <ToDoModel> toDos = [];
  final state = ValueNotifier<HomeState>(HomeState.start);
  final ToDoRepository _repository;

  Future start() async {
    state.value = HomeState.fetching;
    try {
      toDos = await _repository.fetchToDoS();
      state.value = HomeState.success;  
    } catch (e) {
      state.value = HomeState.error;
    }
  }
}

enum HomeState {start, fetching, success, error}
