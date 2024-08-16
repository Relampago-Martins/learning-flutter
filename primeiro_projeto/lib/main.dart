import 'package:flutter/material.dart';
import 'package:primeiro_projeto/pages/configs_page.dart';
import 'package:primeiro_projeto/pages/gatos_page.dart';
import 'package:primeiro_projeto/pages/inicio_page.dart';
import 'package:primeiro_projeto/pages/perfil_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const InicioPage(),
        '/perfil': (context) => const PerfilPage(),
        '/configs': (context) => const ConfigsPage(),
        '/gatos': (context) => const GatosPage(),
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
