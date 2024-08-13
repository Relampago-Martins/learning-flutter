import 'package:flutter/material.dart';
import 'package:primeiro_projeto/pages/inicio.dart';
import 'package:primeiro_projeto/pages/second.dart';
import 'package:primeiro_projeto/pages/third.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const MyHomePage(),
        '/second': (context) => const SecondPage(),
        '/third': (context) => const ThirdPage(),
      },
      initialRoute: '/',
      title: 'Meu primeiro projeto Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
    );
  }
}
