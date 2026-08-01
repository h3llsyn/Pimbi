import 'package:Pimbi/components/appBar.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBarComponent(),
        body: const TabBarView(
          children: [
            Center(child: Text('Tela Pomodoro')),
            Center(child: Text('Tela Curto')),
            Center(child: Text('Tela Longo')),
          ],
        ),
      ),
    );
  }
}