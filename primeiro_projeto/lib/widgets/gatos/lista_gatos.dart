import 'package:flutter/material.dart';
import 'package:primeiro_projeto/widgets/gatos/gato.dart';

class ListaGatos extends StatefulWidget {
  const ListaGatos({super.key});

  @override
  State<ListaGatos> createState() => _ListaGatosState();
}

class _ListaGatosState extends State<ListaGatos> {
  static final _ids = [
    'lTqgf6BhzP2b9d0I',
    'xgUWoELBqu9MrY39',
    'FAkFJCfYbZOF8aDI',
    'ef1jXBKVt8EjMWus',
    '8Tx4SPtXlW9TR5Lm',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _ids.length,
      itemBuilder: (context, index) {
        return Gato(
          href: 'https://cataas.com/cat/${_ids[index]}?position=center',
        );
      },
    );
  }
}
