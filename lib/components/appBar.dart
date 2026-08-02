import 'package:flutter/material.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget{
  const AppBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      toolbarHeight: 100,
      centerTitle: true,
      title: Image.asset(
        "assets/images/pimbi-logo-escrita.png",
        width: 84,
        height: 84,
      ),
      bottom: TabBar(
        indicatorColor: Colors.red,
        labelColor: Colors.red,
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold
        ),
        tabs: [
          Tab(text: 'Pausa Curta',),
          Tab(text: 'Pomodoro',),
          Tab(text: 'Pausa Longa',),
        ]
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(100.0 + 48.0);
}