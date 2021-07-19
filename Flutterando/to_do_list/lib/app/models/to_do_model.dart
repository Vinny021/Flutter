class ToDoModel{
  int userId;
  int id;
  String title;
  bool completed;

  ToDoModel({this.userId, this.id, this.title, this.completed});

  ToDoModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }

  // factory ToDoModel.fromJson(Map json){
  //   return ToDoModel(
  //     userId: json['userId'],
  //     id: json['id'],
  //     title: json['title'],
  //     completed: json['completed']
  //   );
  // }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['completed'] = this.completed;
    return data;
  }

  // Map toJson() {
  //   return {
  //     'id': this.id,
  //     'title': this.title,
  //     'completed': this.completed,
  //     'userId': this.userId,
  //   };
  // }
}