import 'package:bookie_store/core/constants/app_color.dart';
import 'package:bookie_store/core/functions/navigation.dart';
import 'package:bookie_store/features/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.formColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            pushWithReplacement(context, const HomeScreen());
          },
          icon: SvgPicture.asset('assets/icons/back.svg'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/save icon.svg'),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(8),
                child: Image.asset('assets/images/cart details.png'),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Black Heart',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 6),
            Text('Broché', style: TextStyle(fontSize: 18)),
            SizedBox(height: 16),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '₹285',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.bottomColor,
                    foregroundColor: AppColor.formColor,
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text('Add To Cart'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
