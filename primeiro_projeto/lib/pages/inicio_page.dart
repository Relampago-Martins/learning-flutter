import 'package:flutter/material.dart';
import 'package:primeiro_projeto/widgets/side_bar.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[50],
        title: const Text("Início"),
      ),
      body: Row(children: <Widget>[
        const SideBar(
          selectedIndex: 0,
        ),
        const VerticalDivider(
          thickness: 1,
          width: 1,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: TextButton.icon(
              icon: const Icon(Icons.settings_outlined),
              label: const Text('vá para as configurações'),
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
            ),
          ),
        ),
      ]),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }
}
