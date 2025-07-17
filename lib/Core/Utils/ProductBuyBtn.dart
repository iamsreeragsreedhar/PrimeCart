import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartButtons extends StatelessWidget {
  final VoidCallback onAddToCart;
  final VoidCallback onBuyNow;

  const CartButtons({
    Key? key,
    required this.onAddToCart,
    required this.onBuyNow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 60.h,
          
            child: OutlinedButton.icon(
              onPressed: onAddToCart,
              icon: const Icon(Icons.add_shopping_cart, color: Color(0xFF9C27B0)),
              label: const Text(
                "Add to Cart",
                style: TextStyle(
                  color: Color(0xFF9C27B0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Color(0xFF9C27B0)),
                padding: EdgeInsets.symmetric(vertical: 14.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.r),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 10.w),

        Expanded(
          child: Container(
            height: 60.h,
          
            child: ElevatedButton.icon(
              onPressed: onBuyNow,
              icon: const Icon(Icons.double_arrow, color: Colors.white),
              label: const Text(
                "Buy Now",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF9C27B0),
                padding: EdgeInsets.symmetric(vertical: 14.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.r),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
