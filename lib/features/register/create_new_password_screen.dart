import 'package:bookie_store/core/constants/app_color.dart';
import 'package:bookie_store/core/functions/navigation.dart';
import 'package:bookie_store/core/utils/text_style.dart';
import 'package:bookie_store/features/register/change_password_screen.dart';
import 'package:bookie_store/features/register/otp_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController newPasswordController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.borderColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            pushWithReplacement(context, const OtpVerificationScreen());
          },
          icon: SvgPicture.asset('assets/icons/back.svg'),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create new password',
                style: TextStyles.titleStyle(
                  fontFamily: "DMSerifDisplay",
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Your new password must be unique from those \npreviously used.',
                style: TextStyles.bodyStyle(fontSize: 14),
              ),
              SizedBox(height: 24),
              TextField(
                controller: newPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'New Password',
                  hintStyle: TextStyles.bodyStyle(fontSize: 14),
                  filled: true,
                  fillColor: AppColor.grayColor,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: confirmPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  hintStyle: TextStyles.bodyStyle(fontSize: 14),
                  filled: true,
                  fillColor: AppColor.grayColor,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(8),
                    ),
                  ),
                  onPressed: () {
                    pushTo(context, const ChangePasswordScreen());
                  },
                  child: Text(
                    'Reset Password',
                    style: TextStyles.bodyStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
