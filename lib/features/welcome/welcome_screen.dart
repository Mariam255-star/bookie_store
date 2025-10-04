import 'package:bookie_store/core/constants/app_color.dart';
import 'package:bookie_store/core/constants/app_images.dart';
import 'package:bookie_store/core/functions/navigation.dart';
import 'package:bookie_store/features/login/login_screen.dart';
import 'package:bookie_store/features/register/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset('assets/images/welcome.png', fit: BoxFit.cover),
          ),

          SafeArea(
            child: Column(
              children: [
                const Spacer(flex: 2),

                SvgPicture.asset(AppImages.logoSvg, height: 80),
                const SizedBox(height: 16),
                const Text(
                  'Order Your Book Now!',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),

                const Spacer(flex: 3),

                // زر Login
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.primaryColor,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    onPressed: () {
                      pushTo(context, const LoginScreen());
                    },
                    child: const Text("Login"),
                  ),
                ),
                const SizedBox(height: 12),

                // زر Register
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(color: AppColor.primaryColor),
                      minimumSize: const Size(double.infinity, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    onPressed: () {
                      pushTo(context, const RegisterScreen());
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
