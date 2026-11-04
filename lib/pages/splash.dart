import 'package:flutter/material.dart';
import 'package:Pimbi/pages/login.dart';
import 'package:video_player/video_player.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late VideoPlayerController _videoController;
  bool _isVideoInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeAndPlayVideo();
  }

  void _initializeAndPlayVideo() async {
    _videoController = VideoPlayerController.asset(
      'assets/images/relogio-splash_1.mp4',
    );

    try {
      await _videoController.initialize();
      setState(() {
        _isVideoInitialized = true;
      });
      
      _videoController.play();

      await Future.delayed(const Duration(seconds: 3));
      _navigateToLogin();
    } catch (e) {
      debugPrint("Erro ao carregar o vídeo: $e");
      _navigateToLogin();
    }
  }

  void _navigateToLogin() {
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    }
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: _isVideoInitialized
            ? AspectRatio(
                aspectRatio: _videoController.value.aspectRatio,
                child: VideoPlayer(_videoController),
              )
            : const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
      ),
    );
  }
}
