import 'package:flutter/material.dart';
import 'package:Pimbi/pages/tutorialPages/telaTres.dart';
import 'package:Pimbi/pages/tutorialPages/telaUm.dart';

class ButtonGoAndBack extends StatelessWidget {
  final Widget voltar;
  final Widget passar;

  const ButtonGoAndBack({super.key, required this.voltar, required this.passar});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => voltar),
            );
          },
          mouseCursor: SystemMouseCursors.click,
          style: ButtonStyle(
            elevation: WidgetStateProperty.all(1.0),
            shadowColor: WidgetStateProperty.all(Colors.black),
            backgroundColor: WidgetStateProperty.all(Colors.white),
          ),
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.red,
            size: 36,
          ),
        ),
        SizedBox(width: 180),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => passar),
            );
          },
          mouseCursor: SystemMouseCursors.click,
          style: ButtonStyle(
            elevation: WidgetStateProperty.all(1.0),
            shadowColor: WidgetStateProperty.all(Colors.black),
            backgroundColor: WidgetStateProperty.all(Colors.white),
          ),
          icon: Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.red,
            size: 36,
          ),
        ),
      ],
    );
  }
}