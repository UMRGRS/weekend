import 'package:flutter/material.dart';

class MainTopBar extends StatefulWidget implements PreferredSizeWidget {
  const MainTopBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<MainTopBar> createState() => _topBarState();
}

class _topBarState extends State<MainTopBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 3,
      title: const Text("SpicyMoney"),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.search),
          tooltip: 'Buscar grupos',
          onPressed: () {},
        )
      ],
    );
  }

}
