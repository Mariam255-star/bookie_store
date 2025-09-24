 import 'package:bookie_store/core/constants/app_color.dart';
import 'package:bookie_store/core/functions/navigation.dart';
import 'package:bookie_store/core/utils/text_style.dart';
import 'package:bookie_store/features/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/Successmark.svg',
                width: 100,
                height: 100,
                ),
                SizedBox(height: 32,),
                Text('Password Changed!',
                style: TextStyles.titleStyle(
                  fontFamily: "DMSerifDisplay",
                  fontSize: 22,
                   fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 8,),
                Text('Your password has been changed \nsuccessfully.',
                 textAlign: TextAlign.center,
                 style: TextStyles.bodyStyle(
                  fontSize: 14,
                 ),
                ),
                SizedBox(height: 32,),
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
                    pushTo(context, const LoginScreen());
                  },
                  child: Text('Back to Login',
                  style: TextStyles.bodyStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                )
              ],
            ),
          ), 
        ) ,
      ),
    );
  }
}