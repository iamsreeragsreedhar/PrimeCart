// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_website_task/Feature/ProductDetails/Bloc/bloc/cart_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_website_task/Core/Utils/HeaderPart.dart';
import 'package:flutter_website_task/Core/Utils/Widgets.dart';
import 'package:flutter_website_task/Feature/ProductDetails/Presentation/Data/Model.dart';
import 'package:flutter_website_task/Feature/ProductDetails/Presentation/Screens/PlaceOrder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Checkoutpage extends StatefulWidget {
  const Checkoutpage({Key? key}) : super(key: key);

  @override
  State<Checkoutpage> createState() => _CheckoutpageState();
}

class _CheckoutpageState extends State<Checkoutpage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.pop();
        return false;
      },
      child: BlocConsumer<CartBloc, CartState>(
        listener: (context, state) {
         
        },
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CommonHeader(
                      onLoginTap: () {},
                      onSellerTap: () {},
                      onCartTap: () {},
                    ),
                    SizedBox(width: 30.w),
                    HeadingText("Product Details", 25.sp),
                    SizedBox(height: 16.h),
                    Container(
                      padding: EdgeInsets.all(16.w),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 250.h,
                            width: 250.w,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.r),
                              child: state.SelectCheckoutdetails!.thumbnail[0].isNotEmpty
                                  ? Image.network(
                                    state.SelectCheckoutdetails!.thumbnail[0],
                                      fit: BoxFit.contain,
                                      errorBuilder:
                                          (context, error, stackTrace) {
                                            return Container(
                                              color: Colors.grey.shade200,
                                              child: Icon(
                                                Icons.image,
                                                color: Colors.grey.shade400,
                                                size: 30.sp,
                                              ),
                                            );
                                          },
                                    )
                                  : Container(
                                      color: Colors.grey.shade200,
                                      child: Icon(
                                        Icons.image_not_supported,
                                        color: Colors.grey.shade400,
                                        size: 30.sp,
                                      ),
                                    ),
                            ),
                          ),
                          SizedBox(width: 15.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                         state.SelectCheckoutdetails!.productName,
                                        style: TextStyle(
                                          fontSize: 20.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        minimumSize: Size.zero,
                                        tapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                      ),
                                      child: Text(
                                        'EDIT',
                                        style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  state.SelectCheckoutdetails!.productPrice.toString(),
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                Row(
                                  children: [
                                    Text(
                                      'Size: Free Size',
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                    SizedBox(width: 16.w),
                                    Text(
                                      'Qty: 1',
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 16.w),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Total Product Price',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                      Text(
                                        '+ ${state.SelectCheckoutdetails!.productPrice.toString()}',
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                        '₹${state.SelectCheckoutdetails!.productPrice.toString()}}',
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20.h),
                                  Text(
                                    'Clicking on \'Continue\' will not deduct any money',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.grey[600],
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 16.h),
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        context.read<CartBloc>().add(
                                          PlacedorderedProduct(
                                           {state.SelectCheckoutdetails!.productPrice.toString()}
                                          ),
                                        );
                                        context.push('/placeOrder');
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.purple,
                                        padding: EdgeInsets.symmetric(
                                          vertical: 12.h,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            8.r,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        'Continue',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.h),
                                  Container(
                                    padding: EdgeInsets.all(12.w),
                                    decoration: BoxDecoration(
                                      color: Colors.blue.shade50,
                                      borderRadius: BorderRadius.circular(8.r),
                                      border: Border.all(
                                        color: Colors.blue.shade100,
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(6.w),
                                              decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius:
                                                    BorderRadius.circular(4.r),
                                              ),
                                              child: Icon(
                                                Icons.verified_user,
                                                color: Colors.white,
                                                size: 16.sp,
                                              ),
                                            ),
                                            SizedBox(width: 8.w),
                                            Text(
                                              'PrimeCart Safe',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8.h),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Your Safety, Our Priority',
                                                    style: TextStyle(
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  SizedBox(height: 4.h),
                                                  Text(
                                                    'We make sure that your package is safe at every point of contact.',
                                                    style: TextStyle(
                                                      fontSize: 12.sp,
                                                      color: Colors.grey[600],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 8.w),
                                            Container(
                                              width: 60.w,
                                              height: 50.h,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.r),
                                              ),
                                              child: Image.network(
                                                'https://via.placeholder.com/60x50',
                                                fit: BoxFit.cover,
                                                errorBuilder:
                                                    (
                                                      context,
                                                      error,
                                                      stackTrace,
                                                    ) {
                                                      return Container(
                                                        color: Colors
                                                            .grey
                                                            .shade200,
                                                        child: Icon(
                                                          Icons.local_shipping,
                                                          color: Colors
                                                              .grey
                                                              .shade400,
                                                          size: 24.sp,
                                                        ),
                                                      );
                                                    },
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
