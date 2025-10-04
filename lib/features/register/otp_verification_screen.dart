import 'package:bookie_store/core/constants/app_color.dart';
import 'package:bookie_store/core/functions/navigation.dart';
import 'package:bookie_store/core/utils/text_style.dart';
import 'package:bookie_store/features/register/create_new_password_screen.dart';
import 'package:bookie_store/features/register/forget_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.borderColor),
        borderRadius: BorderRadius.circular(8),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.borderColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            pushWithReplacement(context, const ForgetPasswordScreen());
          },
          icon: SvgPicture.asset('assets/icons/back.svg'),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'OTP Verification',
                style: TextStyles.titleStyle(
                  fontFamily: "DMSerifDisplay",
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Enter the verification code we just sent on\nyour email address.',
                style: TextStyles.bodyStyle(fontSize: 14),
              ),
              const SizedBox(height: 24),

              /// OTP Input
              Center(
                child: Pinput(
                  length: 4,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.primaryColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onCompleted: (pin) {
                    debugPrint("Entered OTP: $pin");
                  },
                ),
              ),
              const SizedBox(height: 32),

              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    pushTo(context, const CreateNewPasswordScreen());
                  },
                  child: Text(
                    "Verify",
                    style: TextStyles.bodyStyle(
                      fontSize: 16,

                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Didn’t receive code? ",
                      style: TextStyles.bodyStyle(fontSize: 13),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Resend",
                        style: TextStyles.bodyStyle(
                          fontSize: 13,
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
