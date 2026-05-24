import 'package:flutter/material.dart';
import 'package:pimbi/components/button.dart';
import 'package:pimbi/components/customTextForm.dart';
import 'package:pimbi/pages/cadastrar.dart';
import 'package:pimbi/pages/inicio.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 10,
            top: 0,
            child:
              Image.asset('assets/images/pimbi-logo-escrita.png', width: 190, height: 190),
          ),
          Positioned(
            left: 23,
            top: 145,
            child:
              Text(
                'Bem-Vindo(a)!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
          ),
          Positioned(
            left: 25,
            top: 185,
            child:
              Text(
                'Faça login para continuar',
                style: TextStyle(
                  fontSize: 12,
                  color: const Color.fromARGB(255, 99, 99, 99),
                ),
              ),
          ),
          Positioned(
            right: 0,
            top: 20,
            child:
              Image.asset('assets/images/apple-pimbi-happy-abu.png', width: 190, height: 190),
          ),
          Padding(padding: const EdgeInsets.only(top: 260),
          child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
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
                Button(
                  label: "Entrar",
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => InicioPage()));
                  },
                ),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: (){}, icon: Image.asset('assets/images/google-logo.png', width: 35, height: 35), mouseCursor: SystemMouseCursors.click,
                    style: ButtonStyle(
                      elevation: WidgetStateProperty.all(1.0),
                      shadowColor: WidgetStateProperty.all(Colors.black),
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                    ),
                    ),
                    const SizedBox(width: 30),
                    IconButton(onPressed: (){}, icon: Image.asset('assets/images/apple-logo.png', width: 35, height: 35), mouseCursor: SystemMouseCursors.click,
                    style: ButtonStyle(
                      elevation: WidgetStateProperty.all(1.0),
                      shadowColor: WidgetStateProperty.all(Colors.black),
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                    ),
                    ),
                    const SizedBox(width: 30),
                    IconButton(onPressed: (){}, icon: Image.asset('assets/images/facebook-logo.png', width: 35, height: 35), mouseCursor: SystemMouseCursors.click,
                    style: ButtonStyle(
                      elevation: WidgetStateProperty.all(1.0),
                      shadowColor: WidgetStateProperty.all(Colors.black),
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                    ),
                    ),
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
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CadastrarPage()));
                      },
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
        ],
      ),
    );
  }
}