import 'package:flutter/material.dart';
import 'package:online_5_5/screens/task/task_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Title',

      debugShowCheckedModeBanner: false,
      home: TaskPage(),
    );
  }
}
