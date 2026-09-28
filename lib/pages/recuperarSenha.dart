import 'package:flutter/material.dart';

class RecuperarSenha extends StatelessWidget {
  const RecuperarSenha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/pimbi-logo-escrita.png',
                height: 24,
                width: 24,
              ),
            ],
          ),
        )
      ),
    );
  }
}