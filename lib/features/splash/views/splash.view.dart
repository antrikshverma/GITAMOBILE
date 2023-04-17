import 'dart:async';

import 'package:bgm/features/home/views/home.view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeView(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: Lottie.asset(
                'assets/lottie/loading.json',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Made with ❤ in India',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
