import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: Color.fromARGB(255, 232, 232, 232),
        cardColor: Colors.white,
        primarySwatch: Colors.amber,
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
          headlineSmall: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ),
      home: Home(),
    );
  }
}
