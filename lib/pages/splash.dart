import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
            Image.asset(
              'assets/images/apple-pimbi.png',
              width: 200,
              height: 200,
            ),
            Text(
              'Pimbi',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Foque. Trabalhe. Conquiste.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}