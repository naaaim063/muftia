import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _bgFade;
  late Animation<double> _textFade;
  late Animation<double> _textScale;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );

    _bgFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.3, curve: Curves.easeInOut),
      ),
    );

    _textFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.3, 0.5, curve: Curves.easeIn),
      ),
    );

    _textScale = Tween<double>(begin: 1.0, end: 1.08).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.5, 1.0, curve: Curves.easeOutBack),
      ),
    );

    _controller.forward();

    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FadeTransition(
            opacity: _bgFade,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/images/animasi.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          Container(color: Colors.black.withOpacity(0.02)),

          Center(
            child: FadeTransition(
              opacity: _textFade,
              child: ScaleTransition(
                scale: _textScale,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Milk & Mood",
                      style: GoogleFonts.kavoon(
                        fontSize: 46,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 91, 85, 85),
                        shadows: [
                          Shadow(
                            blurRadius: 0.2,
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(0.5, 0.5),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "'Your daily dose of calm'",
                      style: GoogleFonts.karma(
                        fontSize: 22,
                        color: Colors.black,
                        shadows: [
                          Shadow(
                            blurRadius: 0.2,
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(0.5, 0.5),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
