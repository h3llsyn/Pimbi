import 'package:flutter/material.dart';
import 'package:pimbi/components/authHeader.dart';
import 'package:pimbi/components/button.dart';
import 'package:pimbi/components/customTextForm.dart';
import 'package:pimbi/pages/login.dart';

class CadastrarPage extends StatelessWidget {
  const CadastrarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AuthHeader(
                logoEscrita: 'assets/images/pimbi-logo-escrita.png',
                titulo: 'Vamos criar sua conta',
                subtitulo: 'Cadastre-se para começar',
                logoApple: 'assets/images/apple-pimbi-happy-abu.png',
              ),
              CustomTextForm(
                label: 'Nome completo',
                icon: Icons.person,
              ),
              const SizedBox(height: 16),
              CustomTextForm(
                label: 'E-mail',
                icon: Icons.email,
              ),
              const SizedBox(height: 16),
              CustomTextForm(
                label: 'Senha',
                icon: Icons.lock,
                isObscure: true,
              ),
              const SizedBox(height: 16),
              CustomTextForm(
                label: 'Confirmar senha',
                icon: Icons.lock,
                isObscure: true,
              ),
              const SizedBox(height: 20),
              Button(
                label: "Cadastrar",
                onPressed: (){}
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Já tem uma conta?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 99, 99, 99),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "Entrar",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}