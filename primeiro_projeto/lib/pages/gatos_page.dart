import 'package:flutter/material.dart';
import 'package:primeiro_projeto/widgets/gatos/lista_gatos.dart';
import 'package:primeiro_projeto/widgets/side_bar.dart';

class GatosPage extends StatelessWidget {
  const GatosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[50],
        title: const Text('Gatos'),
      ),
      body: Expanded(
        child: Row(
          children: [
            const SideBar(selectedIndex: 1),
            const VerticalDivider(
              thickness: 1,
              width: 1,
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: const ListaGatos(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
