import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  final int selectedIndex;
  const SideBar({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: selectedIndex,
      backgroundColor: Colors.lightBlue[50],
      minWidth: 120.0,
      labelType: NavigationRailLabelType.all,
      onDestinationSelected: (value) => {
        if (value == 0 && selectedIndex != 0)
          {Navigator.pushNamed(context, '/')}
        else if (value == 1 && selectedIndex != 1)
          {Navigator.pushNamed(context, '/gatos')}
        else if (value == 2 && selectedIndex != 2)
          {Navigator.pushNamed(context, '/perfil')}
        else if (value == 3 && selectedIndex != 3)
          {Navigator.pushNamed(context, '/configs')}
      },
      destinations: const [
        NavigationRailDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: Text('Início'),
        ),
        NavigationRailDestination(
          selectedIcon: Icon(Icons.pest_control_rodent),
          icon: Icon(Icons.pest_control_rodent_outlined),
          label: Text('Gatos'),
        ),
        NavigationRailDestination(
          selectedIcon: Icon(Icons.person),
          icon: Icon(Icons.person_outline),
          label: Text('Perfil'),
        ),
        NavigationRailDestination(
          selectedIcon: Icon(Icons.settings),
          icon: Icon(Icons.settings_outlined),
          label: Text('Configurações'),
        ),
      ],
    );
  }
}
