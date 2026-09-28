import 'package:Pimbi/components/app_notification.dart';
import 'package:flutter/material.dart';
import 'package:Pimbi/components/authHeader.dart';
import 'package:Pimbi/components/button.dart';
import 'package:Pimbi/components/customTextForm.dart';

class CadastrarPage extends StatefulWidget {
  const CadastrarPage({super.key});

  @override
  State<CadastrarPage> createState() => _CadastrarPageState();
}

class _CadastrarPageState extends State<CadastrarPage> {
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  final _confirmarSenhaController = TextEditingController();

  @override
  void dispose() {
    _nomeController.dispose();
    _emailController.dispose();
    _senhaController.dispose();
    _confirmarSenhaController.dispose();
    super.dispose();
  }

  void _cadastrar() {
    final nome = _nomeController.text.trim();
    final email = _emailController.text.trim();
    final senha = _senhaController.text;
    final confirmarSenha = _confirmarSenhaController.text;

    if (nome.isEmpty) {
      showAppNotification(
        context,
        type: NotificationType.error,
        message: "Digite seu nome",
      );
      return;
    }

    if (email.isEmpty) {
      showAppNotification(
        context,
        type: NotificationType.error,
        message: "Digite seu e-mail",
      );
      return;
    }

    if (!email.contains('@') || !email.contains('.')) {
      showAppNotification(
        context,
        type: NotificationType.error,
        message: "Digite um e-mail válido",
      );
      return;
    }

    if (senha.isEmpty) {
      showAppNotification(
        context,
        type: NotificationType.error,
        message: "Digite sua senha",
      );
      return;
    }

    if (senha.length < 6) {
      showAppNotification(
        context,
        type: NotificationType.error,
        message: "A senha deve ter pelo menos 6 caracteres",
      );
      return;
    }

    if (confirmarSenha.isEmpty) {
      showAppNotification(
        context,
        type: NotificationType.error,
        message: "Confirme sua senha",
      );
      return;
    }

    if (senha != confirmarSenha) {
      showAppNotification(
        context,
        type: NotificationType.error,
        message: "As senhas não coincidem",
      );
      return;
    }

    Navigator.pushNamedAndRemoveUntil(
      context,
      '/login',
      (route) => false,
      arguments: true
    );
  }

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
                controller: _nomeController,
              ),

              const SizedBox(height: 16),

              CustomTextForm(
                label: 'E-mail',
                icon: Icons.email,
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(height: 16),

              CustomTextForm(
                label: 'Senha',
                icon: Icons.lock,
                isObscure: true,
                controller: _senhaController,
              ),

              const SizedBox(height: 16),

              CustomTextForm(
                label: 'Confirmar senha',
                icon: Icons.lock,
                isObscure: true,
                controller: _confirmarSenhaController,
              ),

              const SizedBox(height: 20),

              Button(
                label: "Cadastrar",
                onPressed: _cadastrar,
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
                      Navigator.pop(context);
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