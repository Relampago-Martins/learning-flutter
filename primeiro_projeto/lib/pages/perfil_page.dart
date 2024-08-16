import 'package:flutter/material.dart';
import 'package:primeiro_projeto/widgets/perfil_form.dart';
import 'package:primeiro_projeto/widgets/side_bar.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[50],
        title: const Text('Perfil'),
      ),
      body: Row(
        children: [
          const SideBar(selectedIndex: 2),
          const VerticalDivider(
            thickness: 1,
            width: 1,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: const PerfilForm(
                initialUsername: 'usuário',
              ),
            ),
          )
        ],
      ),
    );
  }
}
