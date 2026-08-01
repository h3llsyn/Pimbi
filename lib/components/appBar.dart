import 'package:flutter/material.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget{
  const AppBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color.fromARGB(221, 255, 243, 247),
      toolbarHeight: 100,
      centerTitle: true,
      title: Image.asset(
        "assets/images/pimbi-logo-escrita.png",
        width: 84,
        height: 84,
      ),
      bottom: TabBar(
        tabs: [
          Tab(text: 'Pomodoro',),
          Tab(text: 'Curto',),
          Tab(text: 'Longo',),
        ]
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(100.0 + 48.0);
}