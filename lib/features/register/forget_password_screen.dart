 import 'package:bookie_store/core/constants/app_color.dart';
import 'package:bookie_store/core/functions/navigation.dart';
import 'package:bookie_store/core/utils/text_style.dart';
import 'package:bookie_store/features/login/login_screen.dart';
import 'package:bookie_store/features/register/otp_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: AppColor.borderColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            pushWithReplacement(context, const LoginScreen());
          },
          icon: SvgPicture.asset('assets/icons/back.svg'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Forgot Password?',
           style: TextStyles.titleStyle(
            fontFamily: "DMSerifDisplay",
            fontSize: 30,
            fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 12,),
          Text("Don’t worry! It occurs. Please enter the email "
              "address linked with your account.",
              style: TextStyle(
                fontSize: 14,
                height: 1.4,
              ),
             ),
             SizedBox(height: 30,),
             TextField(
              decoration: InputDecoration(
                hintText: "Enter your email",
                hintStyle: TextStyle(
                  fontSize: 14,
                ),
                filled: true,
                fillColor: Colors.grey.shade100,
              contentPadding: EdgeInsets.symmetric(horizontal: 16,
               vertical: 14,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide.none,
              ),
              ),
             ),
           SizedBox(height: 20,),
           SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(onPressed: () {
              pushTo(context, const OtpVerificationScreen());
            }, 
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              elevation: 0 ,
            ),
            child: Text('Send Code',
             style: TextStyles.bodyStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColor.formColor,
             ),
            ),
            ),
           ),
           Spacer(),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Remember Password?',
              style: TextStyles.smallStyle(
                fontSize: 14,
              ),
              ),
              GestureDetector(
                onTap: () {},
              child: Text('Login' ,
               style: TextStyles.smallStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColor.primaryColor,
               ),
              ),
              ),
            ],
           ),
           SizedBox(height: 20,),
        ],
        ),
      
      ),
    );
  }
}