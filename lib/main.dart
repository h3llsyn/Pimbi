import 'package:Pimbi/pages/inicio.dart';
import 'package:Pimbi/pages/login.dart';
import 'package:Pimbi/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
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
          initialRoute: '/splash',
          routes: {
            '/splash': (context) => const SplashPage(),
            '/login': (context) => const LoginPage(),
            '/inicio': (context) => const InicioPage(),
          },
        );
      },
    );
  }
}
