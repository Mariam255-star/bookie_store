 import 'package:bookie_store/core/constants/app_color.dart';
import 'package:bookie_store/core/utils/text_style.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.formColor,
        elevation: 0,
        centerTitle: true,
        title: Text('Wishlist',
        style: TextStyles.titleStyle(
          fontFamily: "DMSerifDisplay",
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      body:  ListView.builder(
           padding: EdgeInsets.all(16),
           itemCount: 2,
           itemBuilder: (context, index) {
             return Container(
              margin: EdgeInsets.only(bottom: 16),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColor.formColor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                blurRadius: 6,
              spreadRadius: 2,
                )
              ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                child: Image.asset('assets/images/cart image.png',
                ),
                ),
                SizedBox(width: 12,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('The Republic' ,
                    style: TextStyles.bodyStyle(
                      fontSize: 16,
                    fontWeight: FontWeight.bold,
                    ),
                    ),
                  SizedBox(height: 9,),
                  Text('₹285',
                  style: TextStyles.bodyStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                SizedBox(height: 8,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.primaryColor,
                    foregroundColor: AppColor.formColor,
                padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 8,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(8),
                ),
                  ),
              onPressed: () {
                
              },
              child: Text('Add To Cart'),
                )
                  ],
                  ) ,
                ),
                IconButton(
                  onPressed: () {},
                   icon: Icon(Icons.close,)
                   )
              ],
              ),
             );
           },

      ),
    );
  }
}