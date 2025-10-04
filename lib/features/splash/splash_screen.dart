import 'package:bookie_store/core/constants/app_images.dart';
import 'package:bookie_store/core/functions/navigation.dart';
import 'package:bookie_store/features/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4), () {
      pushWithReplacement(context, WelcomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppImages.logoSvg),
            Text(
              'Order Your Book Now!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
