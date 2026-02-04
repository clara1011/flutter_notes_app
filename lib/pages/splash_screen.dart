import 'dart:async';
import 'package:flutter/material.dart';
import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const Homepage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // زخرفة خفيفة على الأطراف
          Positioned(
            top: -60,
            right: -60,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                color: const Color(0xFF8E24AA).withOpacity(0.08),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            bottom: -70,
            left: -70,
            child: Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                color: const Color(0xFFEC407A).withOpacity(0.08),
                shape: BoxShape.circle,
              ),
            ),
          ),

          // المحتوى الرئيسي
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // صورة الشعار
                Image.asset(
                  'assets/images/logo2.png',
                  width: 120,
                ),
                const SizedBox(height: 20),

                // اسم التطبيق
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.2,
                      fontFamily: 'Montserrat', // خط عنوان أنيق
                    ),
                    children: [
                      TextSpan(
                        text: 'Bassma',
                        style: TextStyle(color: Color(0xFF8E24AA)),
                      ),
                      TextSpan(
                        text: 'Notes',
                        style: TextStyle(color: Color(0xFFEC407A)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
