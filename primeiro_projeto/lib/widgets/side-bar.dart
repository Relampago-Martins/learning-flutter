import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  final int selectedIndex;
  const SideBar({super.key, required this.selectedIndex});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return NavigationRail(
        selectedIndex: widget.selectedIndex,
        backgroundColor: Colors.lightBlue[50],
        minWidth: 120.0,
        labelType: NavigationRailLabelType.all,
        onDestinationSelected: (value) => {
              if (value == 0 && widget.selectedIndex != 0)
                {Navigator.pushNamed(context, '/')}
              else if (value == 1 && widget.selectedIndex != 1)
                {Navigator.pushNamed(context, '/second')}
              else if (value == 2 && widget.selectedIndex != 2)
                {Navigator.pushNamed(context, '/third')}
            },
        destinations: const [
          NavigationRailDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: Text('Início'),
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
        ]);
  }
}
