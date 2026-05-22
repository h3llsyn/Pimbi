import 'package:flutter/material.dart';
import 'package:pimbi/components/CustomTextForm.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bem-Vindo(a)!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Faça login para continuar',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey
              ),
            ),
            const SizedBox(height: 16),
            CustomTextForm(label: 'E-mail', icon: Icons.email), 
            const SizedBox(height: 16),
            CustomTextForm(label: 'Senha', icon: Icons.lock, isObscure: true),
            const SizedBox(height: 16),
            TextButton(onPressed: (){},
              child: Text(
                "Esqueci minha senha"
              ),
            ),
          ],
        ),
      ),
    );
  }
}