import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(Icons.home),
              SizedBox(
                height: 8,
              ),
              Text('Listagem'),
            ],
          ),
          Column(
            children: [
              Icon(Icons.settings),
              SizedBox(
                height: 8,
              ),
              Text('Configurações'),
            ],
          ),
          Column(
            children: [
              Icon(Icons.logout),
              SizedBox(
                height: 8,
              ),
              Text('Sair'),
            ],
          ),
        ],
      ),
    );
  }
}
