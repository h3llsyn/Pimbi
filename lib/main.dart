import 'package:Pimbi/pages/inicio.dart';
import 'package:Pimbi/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

          initialRoute: '/login',

          routes: {
            '/login': (context) => const LoginPage(),
            '/inicio': (context) => const InicioPage(),
          },
        );
      },
    );
  }
}