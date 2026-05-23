import 'package:flutter/material.dart';
import 'package:pimbi/components/button.dart';
import 'package:pimbi/components/customTextForm.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/apple-pimbi-happy.png', width: 150, height: 150),
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
                fontSize: 16,
                color: const Color.fromARGB(255, 99, 99, 99),
              ),
            ),
            const SizedBox(height: 32),
            CustomTextForm(label: 'E-mail', icon: Icons.email), 
            const SizedBox(height: 16),
            CustomTextForm(label: 'Senha', icon: Icons.lock, isObscure: true),
            const SizedBox(height: 20),
            TextButton(onPressed: (){},
              style: TextButton.styleFrom(
                enabledMouseCursor: SystemMouseCursors.click,
                overlayColor: Colors.black,
              ),             
              child: Text(
                "Esqueci minha senha",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Button(label: "Entrar"),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Expanded(child: Divider(
                  indent: 30,
                  endIndent: 10,
                )),
                Text(
                  "Ou continue com",
                  style: TextStyle(
                  color: const Color.fromARGB(255, 99, 99, 99),
                  ),
                ),
                Expanded(child: Divider(
                  indent: 10,
                  endIndent: 30,
                )),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){}, icon: Image.asset('assets/images/google-logo.png', width: 30, height: 30), mouseCursor: SystemMouseCursors.click),
                IconButton(onPressed: (){}, icon: Image.asset('assets/images/apple-logo.png', width: 30, height: 30), mouseCursor: SystemMouseCursors.click),
                IconButton(onPressed: (){}, icon: Image.asset('assets/images/facebook-logo.png', width: 30, height: 30), mouseCursor: SystemMouseCursors.click),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Não tem uma conta?",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 99, 99, 99),
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: Text(
                    "Cadastre-se",
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
    );
  }
}