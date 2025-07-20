import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_website_task/Core/Utils/HeaderPart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_website_task/Core/Utils/ProductBuyBtn.dart';
import 'package:flutter_website_task/Core/Utils/Widgets.dart';
import 'package:flutter_website_task/Feature/Homepage/Data/Category/Categorymodel.dart';
import 'package:flutter_website_task/Feature/ProductDetails/Bloc/bloc/cart_bloc.dart';
import 'package:flutter_website_task/Feature/ProductDetails/Presentation/Data/Model.dart';
import 'package:flutter_website_task/Feature/ProductDetails/Presentation/Screens/CheckoutPage.dart';
import 'package:flutter_website_task/Feature/ProductDetails/Presentation/Screens/ProductCart.dart';
import 'package:go_router/go_router.dart';

class ProductDetails extends StatefulWidget {
  

  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartBloc, CartState>(
      listener: (context, state) {
        // if (state.StatusMessage!.isNotEmpty) {
        //   ScaffoldMessenger.of(
        //     context,
        //   ).showSnackBar(SnackBar(content: Text(state.StatusMessage!)));
        // }
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonHeader(
                      onLoginTap: () {},
                      onCartTap: () {
                         context.push('/productCart');
                      },
                      onSellerTap: () {},
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 400.w,
                              height: 500.h,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: Image.network(
                                state.selecteddetails!.productImage[0],
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(height: 12.h),
                            SizedBox(
                              width: 200.w,
                              height: 60.h,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: state.selecteddetails!.productImage.length,
                                itemBuilder: (_, index) => Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 4.w,
                                  ),
                                  child: Container(
                                    width: 50.w,
                                    height: 50.h,
                                    color: Colors.grey.shade200,
                                    child: const Icon(Icons.image),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state.selecteddetails!.productName,
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                ),
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
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(4.r),
                                    ),
                                    child: Text(
                                      "${state.selecteddetails!.rating} ★",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8.w),
                                  Text(
                                    "33,199 Ratings & 1,715 Reviews",
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                "₹${state.selecteddetails!.productPrice}",
                                style: TextStyle(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "₹27,999",
                                    style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    "${state.selecteddetails!.DiscountPrice}% off",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                "Extra ₹4000 off",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10.h),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  OfferItem(
                                    "Bank Offer",
                                    "5% cashback on Flipkart Axis Bank Credit Card",
                                  ),
                                  OfferItem(
                                    "Bank Offer",
                                    "5% cashback on Axis Bank Flipkart Debit Card",
                                  ),
                                  OfferItem(
                                    "Bank Offer",
                                    "Flat ₹10 Instant Cashback on Paytm UPI",
                                  ),
                                  OfferItem(
                                    "Special Price",
                                    "Get extra ₹4000 off (price inclusive of offer)",
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.h),

                              CartButtons(
                                onAddToCart: () {
                                  final product = PhoneModel(
                                    id: 0,
                                    title: state.selecteddetails!.productName,
                                    description:
                                        state.selecteddetails!.productdescription,
                                    category: "",
                                    price: state.selecteddetails!.productPrice,
                                    discountPercentage: 0.0,
                                    rating: 0.0,
                                    stock: 0,
                                    tags: [],
                                    brand: "",
                                    sku: "",
                                    weight: 0,
                                    warrantyInformation:
                                        state.selecteddetails!.warranty,
                                    shippingInformation:
                                        state.selecteddetails!.Shipping,
                                    availabilityStatus: "",
                                    returnPolicy: "",
                                    minimumOrderQuantity: 0,
                                    images: state.selecteddetails!.productImage,
                                    thumbnail: "",
                                  );
                                  BlocProvider.of<CartBloc>(
                                    context,
                                  ).add(AddtoCart(product));
                                },
                                onBuyNow: () {
                                  print( "state.selecteddetails!.productPrice: ${state.selecteddetails!.productPrice} ");  
                                  
                                  // context.read<CartBloc>().add(
                                  //   PlacedorderedProduct(
                                  //     state.selecteddetails!.productPrice,
                                  //   ),
                                  // );

                                  context.read<CartBloc>().add(
                                    CheckOutProductDetail(
                                      CheckoutModel(
                                        productName: state.selecteddetails!.productName,
                                        productPrice: state.selecteddetails!.productPrice,
                                        thumbnail: state.selecteddetails!.productImage,
                                      ),
                                    ),
                                  );
                                  context.push(
                                    '/Checkout', 
                                  );
                                  
                                },
                              ),
                              SizedBox(height: 20.h),
                              HeadingText("Product Description", 20.sp),
                              SizedBox(height: 10.h),
                              ProductdetailText(
                                state.selecteddetails!.productName,
                                16,
                                FontWeight.normal,
                                Colors.grey[800],
                              ),
                              SizedBox(height: 10.h),
                              ProductdetailText(
                                state.selecteddetails!.productdescription,
                                16,
                                FontWeight.normal,
                                Colors.grey[800],
                              ),
                              SizedBox(height: 10.h),
                              HeadingText("Warranty Information", 20.sp),
                              SizedBox(height: 10.h),
                              ProductdetailText(
                                state.selecteddetails!.warranty,
                                16,
                                FontWeight.normal,
                                Colors.grey[800],
                              ),
                              SizedBox(height: 10.h),
                              HeadingText("Shipping Information", 20.sp),
                              SizedBox(height: 10.h),
                              ProductdetailText(
                                state.selecteddetails!.Shipping,
                                16,
                                FontWeight.normal,
                                Colors.grey[800],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget OfferItem(String title, String description) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.local_offer, size: 18.sp, color: Colors.green),
          SizedBox(width: 6.w),
          Expanded(
            child: RichText(
              text: TextSpan(
                text: "$title: ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: description,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
