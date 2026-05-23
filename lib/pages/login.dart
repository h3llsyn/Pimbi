import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
                fontSize: 16,
                color: const Color.fromARGB(255, 99, 99, 99),
              ),
            ),
            const SizedBox(height: 16),
            CustomTextForm(label: 'E-mail', icon: Icons.email), 
            const SizedBox(height: 16),
            CustomTextForm(label: 'Senha', icon: Icons.lock, isObscure: true),
            const SizedBox(height: 16),
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
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                enabledMouseCursor: SystemMouseCursors.click,
                backgroundColor: Colors.red,
                overlayColor: Colors.white,
                fixedSize: Size(320, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
              child: Text(
                "Entrar",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton.outlined(onPressed: (){}, icon: Icon(Icons.g_mobiledata, size: 24)),
                IconButton.outlined(onPressed: (){}, icon: Icon(Icons.apple, size: 24)),
                IconButton.outlined(onPressed: (){}, icon: Icon(Icons.facebook, size: 24)),
              ],
            )
          ],
        ),
      ),
    );
  }
}