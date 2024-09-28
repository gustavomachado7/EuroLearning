import 'package:eurolearning/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:eurolearning/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'euroLearning',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(0, 53, 142, 1)),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => Login(),
        '/home': (context) => const Homepage(),
      },
      initialRoute: '/',
    );
  }
}
