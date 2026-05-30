import 'package:flutter/material.dart';
import 'package:pimbi/pages/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pimbi/pages/splash.dart';
import 'package:pimbi/pages/tutorialPages/telaDois.dart';
import 'package:pimbi/pages/tutorialPages/telaUm.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.interTextTheme(),
        inputDecorationTheme: InputDecorationTheme(
          floatingLabelStyle: TextStyle(
            color: const Color.fromARGB(255, 182, 182, 182),
          ),
          labelStyle: TextStyle(
            color: const Color.fromARGB(255, 182, 182, 182),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 182, 182, 182),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 182, 182, 182),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color.fromARGB(255, 182, 182, 182),
        ),
      ),
      home: const SplashPage(),
    );
  }
}