import 'package:flutter/material.dart';
import 'package:primeiro_projeto/pages/my_home_page.dart';
import 'package:primeiro_projeto/pages/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const MyHomePage(title: 'Bruno'),
        '/second': (context) => const SecondPage(),
        '/third': (context) => const SecondPage(),
      },
      initialRoute: '/',
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
