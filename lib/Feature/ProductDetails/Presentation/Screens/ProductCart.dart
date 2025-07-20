import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_website_task/Core/Utils/HeaderPart.dart';
import 'package:flutter_website_task/Core/Utils/Widgets.dart';
import 'package:flutter_website_task/Feature/ProductDetails/Bloc/bloc/cart_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_website_task/Feature/ProductDetails/Presentation/Screens/CheckoutPage.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    context.read<CartBloc>().add(DisplayCartProduct());
    super.initState();
  }

  Widget build(BuildContext context) {
    return BlocConsumer<CartBloc, CartState>(
      listener: (context, state) {},
      builder: (context, state) {
        print('state.cartItems IN CART PAGE ${state.cartItems}');
        print(state.cartItems.length==0);
        return Scaffold(
          body:     Column(
           
            children: [
              CommonHeader(
                onLoginTap: () {},
                onCartTap: () {
                    context.push('/productCart');
                },
                onSellerTap: () {},
              ),
                (state.cartItems.isEmpty)
                              ? Center(child: Text("No Product in Cart"))
                              :Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.all(16.w),
                      child: 
                     Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeadingText("Product Details", 25.sp),
                          SizedBox(height: 10.h),
                      ListView.builder(
                                  itemCount: state.cartItems.length,
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    final item = state.cartItems[index];
                                    return ListTile(
                                      contentPadding: EdgeInsets.symmetric(
                                        vertical: 8.h,
                                      ),
                                      leading: Image.network(
                                        item.images[0],
                                        height:100.h,
                                        width: 100.w,
                                        fit: BoxFit.contain,
                                      ),
                                      title: Text(
                                        item.title,
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      subtitle: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Price: ${item.price}",
                                            style: TextStyle(fontSize: 14.sp),
                                          ),
                                        ],
                                      ),
                                      trailing: IconButton(
                                        icon: Icon(Icons.remove_circle_outline),
                                        onPressed: () {
                                          context.read<CartBloc>().add(
                                            RemovefromCart(item),
                                          );
                                          context.read<CartBloc>().add(DisplayCartProduct());
                                        },
                                      ),
                                    );
                                  },
                                ),
                          SizedBox(height: 20.h),
                          Text(
                            "Total Items in Cart: ${state.cartItems.length}",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Right Side - Price Summary
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.grey.shade100,
                      padding: EdgeInsets.all(16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Price Details (${state.cartItems.length} Items)",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          _priceRow(
                            "Total Product Price",
                            "₹${state.cartItems[0].price}",
                            isDiscount: false,
                          ),
                          _priceRow(
                            "Total Discounts",
                            "₹${state.cartItems[0].discountPercentage}",
                            isDiscount: true,
                          ),
                          Divider(thickness: 1),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Order Total",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "₹${state.cartItems[0].price}",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Container(
                            padding: EdgeInsets.all(10.w),
                            color: Colors.green.shade100,
                            child: Text(
                              "Yay! Your total discount is ₹${state.cartItems[0].discountPercentage}",
                              style: TextStyle(color: Colors.green.shade800),
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Text(
                            "Clicking on 'Continue' will not deduct any money",
                            style: TextStyle(fontSize: 12.sp),
                          ),
                          SizedBox(height: 10.h),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethodPage()));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF9C27B0),
                                padding: EdgeInsets.symmetric(vertical: 14.h),
                                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.r),
                ),
                              ),
                              child: Text(
                                "Continue",
                                style: TextStyle(fontSize: 16.sp ,color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.h),
                          Row(
                            children: [
                              Icon(
                                Icons.verified_user_outlined,
                                color: Colors.deepPurple,
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: Text(
                                  "Your Safety, Our Priority\nWe make sure your package is safe at every point of contact.",
                                  style: TextStyle(fontSize: 12.sp),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildCartItem({
    required String title,
    required String price,
    required String originalPrice,
    required String discount,
    required String size,
    required String qty,
    required String seller,
    required String imageUrl,
  }) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              height: 60.h,
              width: 60.w,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Text(
                        price,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(width: 6.w),
                      if (originalPrice.isNotEmpty)
                        Text(
                          originalPrice,
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                            fontSize: 12.sp,
                          ),
                        ),
                      if (discount.isNotEmpty)
                        Text(
                          " $discount",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 12.sp,
                          ),
                        ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    "All issue easy returns",
                    style: TextStyle(fontSize: 12.sp),
                  ),
                  Text(
                    "Size: $size   •   Qty: $qty",
                    style: TextStyle(fontSize: 12.sp),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "✕ REMOVE",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Text(
                    "Sold by: $seller",
                    style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "EDIT",
                style: TextStyle(color: Color(0xFF9C27B0)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _priceRow(String label, String value, {bool isDiscount = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              decoration: isDiscount ? TextDecoration.underline : null,
            ),
          ),
          Text(
            (isDiscount ? "- " : "+ ") + value,
            style: TextStyle(color: isDiscount ? Colors.green : Colors.black),
          ),
        ],
      ),
    );
  }
}
