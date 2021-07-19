import 'package:flutter/material.dart';
import 'package:to_do_list/app/controllers/home_controller.dart';
import 'package:to_do_list/app/models/to_do_model.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final controller = HomeController(); 

  _start(){
    return Container();
  }
  _fetching(){
    return Center(child: CircularProgressIndicator());
  }
  _success(){
    return ListView.builder(
      itemCount: controller.toDos.length,
      itemBuilder: (context, index){
        var todo = controller.toDos[index];
        return ListTile(
          title: Text(todo.title),
          leading: Checkbox(
            value: todo.completed, 
            onChanged: (bool value){
            }
          ),
        );
      },
    );
  }
  _error(){
    return Center(child: TextButton(
      onPressed: (){
        controller.start();
      }, 
      child: Text('Tentar Novamente'),
    ));
  }

  stateManager(HomeState state){
    switch (state) {
      case HomeState.start:
        return _start();
      case HomeState.fetching:
        return _fetching();
      case HomeState.success:
        return _success();
      case HomeState.error:
        return _error();
      default:
    }
  }

  @override
  void initState() { 
    super.initState();
    controller.start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh_outlined), 
            onPressed: (){
              controller.start();
            }
          )
        ],
      ),
      body: AnimatedBuilder(
        animation: controller.state, 
        builder: (context, child){
          return stateManager(controller.state.value);
        }
      )
    );
  }
}