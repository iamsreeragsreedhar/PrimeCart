import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_website_task/Core/Utils/SearchField.dart';
import 'package:flutter_website_task/Core/Utils/extension.dart';
import 'package:flutter_website_task/test.dart';

class CommonHeader extends StatelessWidget {
  final VoidCallback onLoginTap;
  final VoidCallback onSellerTap;
  final VoidCallback onCartTap;

  const CommonHeader({
    super.key,
    required this.onLoginTap,
    required this.onSellerTap, required this.onCartTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        children: [
  
          // IconButton(onPressed: (){

          // }, icon: Icon(Icons.arrow_back)),
          70.widthBox,
          Image.asset(
            'assets/logo.png',
            width: 150.w,
            height: 150.h,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 20.w),
          Expanded(
            child: SearchField(
              labelText: "Search Products, Brands and more...",
              suffixIcon: const Icon(Icons.search),
            ),
          ),
          SizedBox(width: 20.w),
          _LoginButton(onTap: onLoginTap),
          SizedBox(width: 30.w),
          _IconTextButton(onPressed:onCartTap, title: "Cart", icon: Icons.shopping_cart_sharp),
          SizedBox(width: 30.w),
          _IconTextButton(onPressed: onSellerTap, title: "Become a Seller", icon: Icons.sell_rounded),
          Divider(thickness: 0.5,)
        ],
      ),
    );
  }

  Widget _LoginButton({required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          color: Colors.transparent,
        ),
        child: Row(
          children: [
            Icon(Icons.person_outline, size: 24.sp, color: const Color.fromARGB(255, 39, 30, 73)),
            SizedBox(width: 4.w),
            Text(
              'Login',
              style: TextStyle(fontSize: 16.sp, color: const Color.fromARGB(255, 39, 30, 73)),
            ),
            SizedBox(width: 2.w),
            Icon(Icons.keyboard_arrow_down, size: 20.sp, color: const Color.fromARGB(255, 39, 30, 73)),
          ],
        ),
      ),
    );
  }

  Widget _IconTextButton({
    required VoidCallback onPressed,
    required String title,
    required IconData icon,
  }) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        children: [
          Icon(icon, size: 26.sp, color: const Color.fromARGB(255, 39, 30, 73)),
          SizedBox(width: 10.w),
          Text(title, style: TextStyle(fontSize: 16.sp, color: const Color.fromARGB(255, 39, 30, 73))),
        ],
      ),
    );
  }
}
