import 'package:flutter/cupertino.dart';

class Tasks {
  static String principalTask = 'Estudar';
  static String secundaryTask = 'Ler';
  static String organizeTask = 'Organizar';
  static List<String> finalList;
  static List<String> tasks = [
    'Checar Email',
    'Descansar',
    'Treinar',
    secundaryTask
  ];

  static void swap() {
    var index = 0;
    finalList.forEach((element) {
      if (element == principalTask) {
        finalList[index] = secundaryTask;
      }
      if (element == secundaryTask) {
        finalList[index] = principalTask;
      }
      index++;
    });
    print(finalList);
  }

  static void estudarToPrincipal() {
    principalTask = 'Estudar';
    secundaryTask = 'Ler';

    tasks.removeLast();
    tasks.add(secundaryTask);
  }

  static void lerToPrincipal() {
    principalTask = 'Ler';
    secundaryTask = 'Estudar';

    tasks.removeLast();
    tasks.add(secundaryTask);
  }

  static void fillList() {
    finalList = [];
    finalList.add(organizeTask);

    int index = tasks.length;
    List<int> indexList = [];
    for (var i = 0; i < index; i++) {
      indexList.add(i);
    }
    indexList.shuffle();

    for (var index in indexList) {
      finalList.add(principalTask);
      finalList.add(tasks[index]);
    }
    finalList.add(principalTask);

    print(finalList);
  }
}
