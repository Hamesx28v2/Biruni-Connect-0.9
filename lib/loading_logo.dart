import 'package:flutter/material.dart';
import 'main.dart';

// Yükleme ekranı
class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: RotationTransition(
          turns: _controller,
          child: Image.asset(
            'assets/images/logo.png', // Logonun yolu
            width: 300,
            height: 300,
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    // Dönen logo için animasyon kontrolcüsü
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();

    // 3 saniye sonra ana sayfaya geçiş yap
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}