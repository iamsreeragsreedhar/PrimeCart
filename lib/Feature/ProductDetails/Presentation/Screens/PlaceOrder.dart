import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_website_task/Core/Utils/HeaderPart.dart';
import 'package:flutter_website_task/Feature/ProductDetails/Bloc/bloc/cart_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PaymentMethodPage extends StatefulWidget {
  PaymentMethodPage({super.key});

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  int selectedPaymentMethod = 0;
  bool isReselling = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartBloc, CartState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.grey[50],

          body: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                CommonHeader(
                  onLoginTap: () {},
                  onSellerTap: () {},
                  onCartTap: () {},
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Payment Method Selection
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: Colors.grey.shade200),
                            ),
                            padding: EdgeInsets.all(20.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Select Payment Method',
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 20.h),

                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedPaymentMethod = 0;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(16.w),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: selectedPaymentMethod == 0
                                            ? Colors.purple
                                            : Colors.grey.shade300,
                                        width: selectedPaymentMethod == 0
                                            ? 2
                                            : 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8.r),
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          '₹${state.DataVar}',
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(width: 16.w),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Text(
                                                'Cash on Delivery',
                                                style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              SizedBox(width: 8.w),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 6.w,
                                                  vertical: 2.h,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.orange.shade100,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                        4.r,
                                                      ),
                                                ),
                                                child: Text(
                                                  '💳',
                                                  style: TextStyle(
                                                    fontSize: 12.sp,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Radio<int>(
                                          value: 0,
                                          groupValue: selectedPaymentMethod,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedPaymentMethod = value!;
                                            });
                                          },
                                          activeColor: Colors.purple,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16.h),

                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedPaymentMethod = 1;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(16.w),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: selectedPaymentMethod == 1
                                            ? Colors.purple
                                            : Colors.grey.shade300,
                                        width: selectedPaymentMethod == 1
                                            ? 2
                                            : 1,
                                      ),
                                      borderRadius: BorderRadius.circular(8.r),
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '₹99',
                                                  style: TextStyle(
                                                    fontSize: 14.sp,
                                                    color: Colors.grey.shade600,
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                  ),
                                                ),
                                                Text(
                                                  '₹${state.DataVar}',
                                                  style: TextStyle(
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.green,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 16.w),
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Pay Online',
                                                    style: TextStyle(
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  SizedBox(width: 8.w),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          horizontal: 6.w,
                                                          vertical: 2.h,
                                                        ),
                                                    decoration: BoxDecoration(
                                                      color: Colors
                                                          .orange
                                                          .shade100,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            4.r,
                                                          ),
                                                    ),
                                                    child: Text(
                                                      '🔥',
                                                      style: TextStyle(
                                                        fontSize: 12.sp,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Radio<int>(
                                              value: 1,
                                              groupValue: selectedPaymentMethod,
                                              onChanged: (value) {
                                                setState(() {
                                                  selectedPaymentMethod =
                                                      value!;
                                                });
                                              },
                                              activeColor: Colors.purple,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8.h),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 6.w,
                                                vertical: 2.h,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.green.shade100,
                                                borderRadius:
                                                    BorderRadius.circular(4.r),
                                              ),
                                              child: Text(
                                                'Save ₹19',
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 12.h),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.check_circle,
                                              color: Colors.green,
                                              size: 16.sp,
                                            ),
                                            SizedBox(width: 6.w),
                                            Text(
                                              'Extra discount with bank offers',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Colors.grey.shade600,
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
                          ),
                          SizedBox(height: 20.h),
                          // Reselling Option
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: Colors.grey.shade200),
                            ),
                            padding: EdgeInsets.all(20.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Reselling the order?',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  'Click on \'Yes\' to add Final Price',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                                SizedBox(height: 16.h),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isReselling = false;
                                        });
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 20.w,
                                          vertical: 8.h,
                                        ),
                                        decoration: BoxDecoration(
                                          color: !isReselling
                                              ? Colors.purple.shade100
                                              : Colors.transparent,
                                          border: Border.all(
                                            color: !isReselling
                                                ? Colors.purple
                                                : Colors.grey.shade300,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            20.r,
                                          ),
                                        ),
                                        child: Text(
                                          'No',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: !isReselling
                                                ? Colors.purple
                                                : Colors.grey.shade600,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 12.w),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isReselling = true;
                                        });
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 20.w,
                                          vertical: 8.h,
                                        ),
                                        decoration: BoxDecoration(
                                          color: isReselling
                                              ? Colors.purple.shade100
                                              : Colors.transparent,
                                          border: Border.all(
                                            color: isReselling
                                                ? Colors.purple
                                                : Colors.grey.shade300,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            20.r,
                                          ),
                                        ),
                                        child: Text(
                                          'Yes',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: isReselling
                                                ? Colors.purple
                                                : Colors.grey.shade600,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16.w),
                    // Price Details Section
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: Colors.grey.shade200),
                        ),
                        padding: EdgeInsets.all(20.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Price Details (1 Items)',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 16.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total Product Price',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                                Text(
                                  '+ ₹{state.DataVar}',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16.h),
                            Divider(color: Colors.grey.shade200),
                            SizedBox(height: 16.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Order Total',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '₹${state.DataVar}',
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 24.h),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                               showAboutDialog(context: context, 
                                  applicationName: 'Order Confirmation',
                                  applicationVersion: '1.0.0',
                                  children: [
                                    Text('Your order has been placed successfully!'),
                                  ]);
                                  // context.push('/');
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purple,
                                  padding: EdgeInsets.symmetric(vertical: 14.h),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                ),
                                child: Text(
                                  'Place Order',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
