import 'package:flutter/material.dart';
import 'package:primeiro_projeto/widgets/side-bar.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[50],
        title: const Text('Perfil'),
      ),
      body: Row(
        children: [
          const SideBar(selectedIndex: 1),
          const VerticalDivider(
            thickness: 1,
            width: 1,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: const Text('Perfil'),
            ),
          )
        ],
      ),
    );
  }
}
