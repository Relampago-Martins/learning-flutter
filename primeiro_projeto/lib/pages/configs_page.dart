import 'package:flutter/material.dart';
import 'package:primeiro_projeto/widgets/side_bar.dart';

class ConfigsPage extends StatelessWidget {
  const ConfigsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[50],
        title: const Text('Configurações'),
      ),
      body: Row(
        children: [
          const SideBar(selectedIndex: 3),
          const VerticalDivider(
            thickness: 1,
            width: 1,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: const Text('Configurações'),
            ),
          )
        ],
      ),
    );
  }
}
