import 'package:flutter/material.dart';
import 'package:mobile_quiz_project/models/question_model.dart';
import './screens/home_screen.dart';
import './models/db_connect.dart';

void main(){
  var db = DBconnect();
/*  db.addQuestion(
    Question(id: '20', title: 'What is 2 x 100 ?', options: {
      '100': false,
      '200':true,
      '300':false,
      '400':false,})
  );*/
  db.fetchQuestions();
  runApp(const MyApp(),
  );
}
class MyApp extends StatelessWidget{
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}