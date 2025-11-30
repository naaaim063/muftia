import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(const TaskuyApp());
}

class TaskuyApp extends StatelessWidget {
  const TaskuyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taskuy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 38, 145, 211),
        ),
      ),
      home: const LoginPage(),
    );
  }
}
