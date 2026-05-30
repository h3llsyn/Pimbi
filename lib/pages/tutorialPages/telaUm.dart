import 'package:flutter/material.dart';
import 'package:pimbi/components/button.dart';
import 'package:pimbi/components/pularBotao.dart';
import 'package:pimbi/pages/inicio.dart';
import 'package:pimbi/pages/tutorialPages/telaDois.dart';

class TelaUm extends StatelessWidget {
  const TelaUm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PularBotao(),
          Image.asset(
            'assets/images/apple-pimbi-happy-abu.png',
            width: 200,
            height: 200,
          ),
          SizedBox(height: 36),
          Text(
            "Conta criada",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          Text(
            "com sucesso!",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Bem-vindo ao ", style: TextStyle(fontSize: 16)),
              Text(
                "Pimbi",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Text(
            "Vamos juntos focar, estudar\ne conquistar seus objetivos!",
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 80),
          Button(
            label: "Vamos começar",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TelaDois()
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
