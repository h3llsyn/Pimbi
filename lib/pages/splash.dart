import 'dart:async';

import 'package:flutter/material.dart';
import 'package:Pimbi/pages/login.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // WebP animado com transparência real (o MP4 não suporta canal alfa).
  static const _clockAnimation = 'assets/images/relogio-splash.webp';
  static const _clockStatic = 'assets/images/apple-pimbi-relogio-abuu.png';
  static const _splashDuration = Duration(seconds: 3);

  Timer? _timer;
  bool _timerScheduled = false;
  bool _navigated = false;

  // Só começa a contar os 3s quando o relógio já está aparecendo na tela.
  void _scheduleNavigation() {
    if (!mounted || _timerScheduled) return;
    _timerScheduled = true;
    _timer = Timer(_splashDuration, _navigateToLogin);
  }

  void _navigateToLogin() {
    if (!mounted || _navigated) return;
    _navigated = true;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
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
              offset: const Offset(0, 10),
              child: Image.asset(
                _clockAnimation,
                width: 260,
                height: 260,
                fit: BoxFit.contain,
                filterQuality: FilterQuality.medium,
                gaplessPlayback: true,
                frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                  if (frame != null && !_timerScheduled) {
                    WidgetsBinding.instance.addPostFrameCallback(
                      (_) => _scheduleNavigation(),
                    );
                  }
                  return child;
                },
                // Se a animação falhar, mostra a maçã estática e segue o fluxo.
                errorBuilder: (context, error, stackTrace) {
                  debugPrint('Erro ao carregar a animação da splash: $error');
                  WidgetsBinding.instance.addPostFrameCallback(
                    (_) => _scheduleNavigation(),
                  );
                  return Image.asset(_clockStatic, width: 260, height: 260);
                },
              ),
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
              offset: const Offset(0, -10), // sobe 10
              child: Image.asset(
                'assets/images/pimbi-logo-escrita-brancaa.png',
                width: 160,
                height: 160,
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -40),
              child: const Text(
                'Foque. Trabalhe. Conquiste.',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
