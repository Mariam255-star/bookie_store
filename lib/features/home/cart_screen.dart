import 'package:bookie_store/core/constants/app_color.dart';
import 'package:bookie_store/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List <int> quantities = [1 , 1];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: AppColor.formColor,
        elevation: 0,
        centerTitle: true,
        title: Text('My Cart',
        style: TextStyles.titleStyle(
          fontFamily: 'DMSerifDisplay',
          fontWeight: FontWeight.bold,
          fontSize: 23,
        ),
        ),
       ),
       body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: quantities.length,
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
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(8),
                    child: Image.asset('assets/images/cart image.png'),
                    ),
                    SizedBox(width: 12,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('The Republic',
                  style: TextStyles.bodyStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(height: 8),
                  Text('₹285' ,
                   style: TextStyles.bodyStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                   ),
                  ),
              SizedBox(height: 8),
              Row(
                children: [
                  IconButton(onPressed: () {
                    setState(() {
                    if  (quantities[index] > 1){
                        quantities[index]--;
                      }
                    });
                  },
                   icon: Icon(Icons.remove),
                   ),
              Text(quantities[index].toString().padLeft(2,'0'),
              style: TextStyles.bodyStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
              IconButton(onPressed: () {
                setState(() {
                  quantities[index]++;

                });
              },
               icon: Icon(Icons.add),
                ),
                ],
              ),
                ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    setState(() {
                      quantities.removeAt(index);
                    });
                  },
                  ),
                  ],
                ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColor.formColor,
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                spreadRadius: 2,
              )
            ],
            ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total',
            style: TextStyles.bodyStyle(
              fontSize: 16,
            ),
            ),
        Text( "\$ ${(quantities.fold<int>(0, (p, e) => p + (e * 95)))}.00",
         style: TextStyles.bodyStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
         ),
        ),
          ],
            ),
      SizedBox(height: 12,),
      SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.primaryColor,
            foregroundColor: AppColor.formColor,
            padding: EdgeInsets.symmetric(
              vertical: 14,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {
            
          },
          child: Text('Checkout',
          style: TextStyle(
            fontSize: 16,
          ),
          ),
        ),
      )
          ],
        ),
          )
        ],
       ),
    );
  }
}