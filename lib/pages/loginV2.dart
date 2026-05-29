import 'package:flutter/material.dart';
import 'package:pimbi/components/button.dart';
import 'package:pimbi/components/customTextForm.dart';
import 'package:pimbi/pages/cadastrar.dart';
import 'package:pimbi/pages/inicio.dart';

class LoginPageV2 extends StatelessWidget {
  const LoginPageV2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(
                height: 135,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [

                    Positioned(
                      top: 24,
                      child: Image.asset(
                        'assets/images/apple-pimbi-happy-abu.png',
                        width: 65,
                        height: 65,
                      ),
                    ),

                    Positioned(
                      top: 65,
                      child: Image.asset(
                        'assets/images/pimbi-logo-escrita.png',
                        width: 90,
                        height: 90,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Text(
                'Bem-Vindo de volta!',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Faça login para continuar',
                style: const TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 99, 99, 99),
                ),
              ),

              SizedBox(height: 24),

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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InicioPage(),
                    ),
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