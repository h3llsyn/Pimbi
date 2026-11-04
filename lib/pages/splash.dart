import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Pimbi/pages/login.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // WebP animado com transparência real (o MP4 não suporta canal alfa).
  static const _animationAsset = 'assets/images/relogio-splash.webp';
  static const _splashDuration = Duration(seconds: 3);

  Timer? _timer;
  bool _timerScheduled = false;
  bool _navigated = false;

  // Só começa a contar os 3s quando o primeiro frame já está na tela.
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
        child: Image.asset(
          _animationAsset,
          // Tamanho fixo e proporcional à tela (antes ocupava a largura toda).
          width: 200.w,
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
          errorBuilder: (context, error, stackTrace) {
            debugPrint('Erro ao carregar a animação da splash: $error');
            WidgetsBinding.instance.addPostFrameCallback(
              (_) => _navigateToLogin(),
            );
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
