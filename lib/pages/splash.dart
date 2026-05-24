import 'package:flutter/material.dart';
import 'package:pimbi/pages/login.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState(){
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      (){
        if(mounted){
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()
            ),
          );
        }
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.translate(
              offset: Offset(0, 10),
              child: Image.asset('assets/images/apple-pimbi-relogio.png', width: 260, height: 260),
            ),
            // Text(
            //   'Pimbi',
            //   style: TextStyle(
            //     fontSize: 36,
            //     fontWeight: FontWeight.bold,
            //     color: Colors.white,
            //   ),
            // ),
            Transform.translate(
              offset: Offset(0, -10), // sobe 10
              child: Image.asset('assets/images/pimbi-logo-escrita-brancaa.png', width: 160, height: 160),
            ),
            Transform.translate(
              offset: Offset(0, -40),
              child:
                Text(
                  'Foque. Trabalhe. Conquiste.',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}