
import 'package:flutter/material.dart';
import 'package:quiz_app/models/DB_connection.dart';
import 'package:quiz_app/screens/home_screen.dart';

void main() {
  var db = DBConnect();
  db.fetchQuestions();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) :super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}