import 'package:flutter/material.dart';
import 'package:pimbi/components/pularBotao.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pimbi/pages/tutorialPages/telaUm.dart';

class TelaDois extends StatelessWidget {
  const TelaDois({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PularBotao(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Como o ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              Text(
                "Pimbi",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Colors.red
                ),
              ),
            ],
          ),
          Text(
            "funciona",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
          SizedBox(height: 12),
          Text(
            "Seu app para foco e produtividade",
            style: TextStyle(
              fontSize: 14
            ),
          ),
          SizedBox(height: 24),
          CircularPercentIndicator(
            radius: 140,
            lineWidth: 10,
            percent: 0.25,
            circularStrokeCap: CircularStrokeCap.round,
            backgroundColor: Colors.red.shade100,
            progressColor: Colors.red,
            center: Transform.translate(
              offset: const Offset(0, -10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/apple-pimbi-happy-abu.png',
                    height: 60,
                  ),
                  const Text(
                    '18:45',
                    style: TextStyle(
                      fontSize: 56,
                    ),
                  ),
                  const Text(
                    'Foque no que importa!',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 42),
          Text(
            "1. Foque com o Pomodoro",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.red
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Use ciclos de foco e pausa para manter\nsua mente produtiva e descansada.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14
            ),
          ),
          SizedBox(height: 36),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: (){
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TelaUm()
                    ),
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
                  size: 36
                )
              ),
              SizedBox(width: 180),
              IconButton(
                onPressed: (){},
                mouseCursor: SystemMouseCursors.click,
                style: ButtonStyle(
                  elevation: WidgetStateProperty.all(1.0),
                  shadowColor: WidgetStateProperty.all(Colors.black),
                  backgroundColor: WidgetStateProperty.all(Colors.white),
                ),
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.red,
                  size: 36
                )
              ),
            ],
          ),
        ],
      ),
    );
  }
}