import 'package:bookie_store/core/constants/app_color.dart';
import 'package:bookie_store/core/functions/navigation.dart';
import 'package:bookie_store/features/home/cart_screen.dart';
import 'package:bookie_store/features/home/product_details_screen.dart';
import 'package:bookie_store/features/home/wish_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.formColor,
      appBar: AppBar(
        backgroundColor: AppColor.formColor,
        elevation: 0,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: SvgPicture.asset('assets/images/logo 2.svg', height: 28),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/search icon.svg',
              height: 24,
              width: 24,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 180,
              child: PageView(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/books.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () {
                pushTo(context, const ProductDetailsScreen());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 12,
                    height: 6,
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: BoxDecoration(
                      color: AppColor.cardColor,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Best Seller',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.65,
                children: List.generate(4, (index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: AppColor.cardColor,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          blurRadius: 4,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(12),
                          ),
                          child: Image.asset(
                            'assets/images/product image.png',
                            height: 150,
                            width: double.infinity,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'The Republic',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          '₹285',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 6),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.darkColor,
                            foregroundColor: AppColor.formColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {
                            pushTo(context, const ProductDetailsScreen());
                          },
                          child: const Text('Buy'),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          if (index == 1) {
            pushTo(context, const WishListScreen());
          } else if (index == 2) {
            pushTo(context, const CartScreen());
            //} else if (index == 3) {
            //  pushTo(context, const ProfileScreen());
            //}
          }
          ;
        },
        selectedItemColor: AppColor.darkColor,
        unselectedItemColor: AppColor.grayColor,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home icon.svg',
              height: 24,
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/save icon.svg',
              height: 24,
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/Category.svg',
              height: 24,
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/Profile.svg',
              height: 24,
              width: 24,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
