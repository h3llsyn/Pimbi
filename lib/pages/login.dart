import 'package:flutter/material.dart';
import 'package:Pimbi/components/authHeader.dart';
import 'package:Pimbi/components/button.dart';
import 'package:Pimbi/components/customTextForm.dart';
import 'package:Pimbi/pages/cadastrar.dart';
import 'package:Pimbi/pages/inicio.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AuthHeader(
                logoEscrita: 'assets/images/pimbi-logo-escrita.png',
                titulo: 'Bem-Vindo de volta!',
                subtitulo: 'Faça login para continuar',
                logoApple: 'assets/images/apple-pimbi-happy-abu.png',
              ),
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
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  enabledMouseCursor: SystemMouseCursors.click,
                  overlayColor: Colors.black,
                ),
                child: const Text(
                  "Esqueci minha senha",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Button(
                label: "Entrar",
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/inicio',
                    (route) => false
                  );
                },
              ),

              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    child: Divider(
                      indent: 30,
                      endIndent: 10,
                    ),
                  ),

                  const Text(
                    "Ou continue com",
                    style: TextStyle(
                      color: Color.fromARGB(255, 99, 99, 99),
                    ),
                  ),

                  const Expanded(
                    child: Divider(
                      indent: 10,
                      endIndent: 30,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  IconButton(
                    onPressed: () {},
                    mouseCursor: SystemMouseCursors.click,
                    style: ButtonStyle(
                      elevation: WidgetStateProperty.all(1.0),
                      shadowColor: WidgetStateProperty.all(Colors.black),
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                    ),
                    icon: Image.asset(
                      'assets/images/google-logo.png',
                      width: 35,
                      height: 35,
                    ),
                  ),

                  const SizedBox(width: 30),

                  IconButton(
                    onPressed: () {},
                    mouseCursor: SystemMouseCursors.click,
                    style: ButtonStyle(
                      elevation: WidgetStateProperty.all(1.0),
                      shadowColor: WidgetStateProperty.all(Colors.black),
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                    ),
                    icon: Image.asset(
                      'assets/images/apple-logo.png',
                      width: 35,
                      height: 35,
                    ),
                  ),

                  const SizedBox(width: 30),

                  IconButton(
                    onPressed: () {},
                    mouseCursor: SystemMouseCursors.click,
                    style: ButtonStyle(
                      elevation: WidgetStateProperty.all(1.0),
                      shadowColor: WidgetStateProperty.all(Colors.black),
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                    ),
                    icon: Image.asset(
                      'assets/images/facebook-logo.png',
                      width: 35,
                      height: 35,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  const Text(
                    "Não tem uma conta?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 99, 99, 99),
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CadastrarPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "Cadastre-se",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}