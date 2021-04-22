import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';



class HomeController{
  HomeState state = HomeState.empty;

  UserModel? user;
  List <QuizModel>? quizzes;

  void getUser(){
    user = UserModel(
      name: "Vinícius", 
      photoUrl: "https://avatars.githubusercontent.com/u/61625896?v=4"
    );
  }

  void getQuizzes(){
    quizzes = [
        QuizModel(
          title: "NLW 5 Flutter", 
          questions: [
            QuestionModel(
              title: "Está curtindo o Flutter?", 
              answers: [
                AnswerModel(title: "Estou curtindo"),
                AnswerModel(title: "Amando Flutter"),
                AnswerModel(title: "Bom demais"),
                AnswerModel(title: "Show de bola!", isRight: true),
              ]  
            )
          ], 
          imagem: AppImages.blocks, 
          level: Level.facil) 
    ];
  }
}