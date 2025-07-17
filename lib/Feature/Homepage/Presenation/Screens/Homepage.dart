import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_website_task/Core/Utils/GridView.dart';
import 'package:flutter_website_task/Core/Utils/HeaderPart.dart';
import 'package:flutter_website_task/Core/Utils/PhoneGridView.dart';
import 'package:flutter_website_task/Core/Utils/SearchField.dart';
import 'package:flutter_website_task/Core/Utils/Widgets.dart';
import 'package:flutter_website_task/Core/Utils/extension.dart';
import 'package:flutter_website_task/Core/Utils/slider.dart';
import 'package:flutter_website_task/Feature/Homepage/Data/Category/Categorymodel.dart';
import 'package:flutter_website_task/Feature/Homepage/Presenation/Bloc/bloc/category_bloc.dart';
import 'package:flutter_website_task/Feature/Homepage/Presenation/Bloc/bloc/category_event.dart';
import 'package:flutter_website_task/Feature/Homepage/Presenation/Bloc/bloc/category_state.dart';
import 'package:flutter_website_task/Feature/ProductDetails/Presentation/Data/Model.dart';
import 'package:flutter_website_task/Feature/ProductDetails/Presentation/Screens/ProductCart.dart';
import 'package:flutter_website_task/Feature/ProductDetails/Presentation/Screens/ProductDetails.dart';
import 'package:flutter_website_task/test.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HeaderPartState();
}

class _HeaderPartState extends State<Homepage> {
  @override
  void initState() {
    // context.read<CategoryBloc>().add(FetchCategories());
    context.read<CategoryBloc>().add(FeaturedProducts());
    context.read<CategoryBloc>().add(TopBrands());
    context.read<CategoryBloc>().add(GetAllProducts());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CategoryBloc, CategoryState>(
      listener: (context, state) {
        // if (state.selectedProductdetails != null) {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => ProductDetails(
          //       productImage: state.selectedProductdetails!.images,
          //       productName: state.selectedProductdetails!.title,
          //       productPrice: state.selectedProductdetails!.price,
          //       DiscountPrice: state.selectedProductdetails!.discountPercentage,
          //       productdescription: state.selectedProductdetails!.description,
          //       rating: state.selectedProductdetails!.rating,
          //       Shipping: state.selectedProductdetails!.shippingInformation,
          //       warranty: state.selectedProductdetails!.warrantyInformation,
          //     ),
          //   ),
          // );

        //   context.read<CategoryBloc>().emit(
        //     state.copyWith(selectedProduct: null),
        //   );
        // }

        // if (state.selectedProduct != null) {
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => ProductDetails(
        //         productImage: state.selectedProduct!.images,
        //         productName: state.selectedProduct!.title,
        //         productPrice: state.selectedProduct!.price,
        //         DiscountPrice: state.selectedProduct!.discountPercentage,
        //         productdescription: state.selectedProduct!.description,
        //         rating: state.selectedProduct!.rating,
        //         Shipping: state.selectedProduct!.shippingInformation,
        //         warranty: state.selectedProduct!.warrantyInformation,
        //       ),
        //     ),
        //   );

        //   context.read<CategoryBloc>().emit(
        //     state.copyWith(selectedProduct: null),
        //   );
        // }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonHeader(
                    onLoginTap: () {},
                    onCartTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CartPage()),
                      );
                    },
                    onSellerTap: () {},
                  ),
                  Divider(thickness: 0.5, color: Colors.grey.shade300),
                  SizedBox(height: 10.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: state.categories.map((category) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                      192,
                                      242,
                                      237,
                                      243,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Image.network(
                                    category.image,
                                    width: 80.w,
                                    height: 80.h,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8.h),
                              SizedBox(
                                width: 250.w,
                                child: Text(
                                  category.name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Divider(thickness: 0.5, color: Colors.grey.shade300),
                  Sliderwidget(),
                  SizedBox(height: 20.h),

                  HeadingText("Top Brands", 25),
                  SizedBox(
                    height: 350.h,
                    child: PhoneGridView(
                      PrdouctList: state.PhoneList,
                      CrossAxCount: 10,
                      GridLength: state.PhoneList.length,
                      ontap: (index) {
                        // final product = state.PhoneList;
                        // print("Product tapped: ${product[index].title}");
                        // context.read<CategoryBloc>().add(
                        //   NavigateToDetails(product[index]),
                        // );

                          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetails(
                productImage: state.PhoneList[index].images,
                productName: state.PhoneList[index].title,
                productPrice: state.PhoneList[index].price,
                DiscountPrice: state.PhoneList[index].discountPercentage,
                productdescription: state.PhoneList[index].description,
                rating: state.PhoneList[index].rating,
                Shipping: state.PhoneList[index].shippingInformation,
                warranty: state.PhoneList[index].warrantyInformation,
              ),
            ),
          );




//           context.push(
//   '/product-details',
//   extra: ProductDetailsArgs(
//     productImage: state.PhoneList[index].images,
//     productName: state.PhoneList[index].title,
//     productPrice: state.PhoneList[index].price,
//     DiscountPrice: state.PhoneList[index].discountPercentage,
//     productdescription: state.PhoneList[index].description,
//     rating: state.PhoneList[index].rating,
//     Shipping: state.PhoneList[index].shippingInformation,
//     warranty: state.PhoneList[index].warrantyInformation,
//   ),
// );
                      },
                    ),
                  ),
                  HeadingText("Featured Products", 25.sp),
                  SizedBox(height: 20.h),
                  //  SizedBox(
                  //   height: 350.h,
                  //   child: NewGridview(
                  //     PrdouctList: state.products,
                  //     CrossAxCount: 10,
                  //     GridLength:10,
                  //     ontap: (index) {
                  //      final product = state.products;
                  //       print("Product tapped: ${product[index].title}");
                  //       context.read<CategoryBloc>().add(NavigateToProductdetails(product[index]));
                  //     },
                  //   )),
                  SizedBox(
                    height: 350.h,
                    child: PhoneGridView(
                      PrdouctList: state.Featuredproducts,
                      CrossAxCount: 10,
                      GridLength: state.Featuredproducts.length,
                      ontap: (index) {
                        // final product = state.Featuredproducts;
                        // print("Product tapped: ${product[index].title}");
                        // context.read<CategoryBloc>().add(
                        //   NavigateToProductdetails(product![index]),
                        // );

                        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetails(
                productImage: state.Featuredproducts[index].images,
                productName: state.Featuredproducts[index].title,
                productPrice: state.Featuredproducts[index].price,
                DiscountPrice: state.Featuredproducts[index].discountPercentage,
                productdescription: state.Featuredproducts[index].description,
                rating: state.Featuredproducts[index].rating,
                Shipping: state.Featuredproducts[index].shippingInformation,
                warranty: state.Featuredproducts[index].warrantyInformation,
              ),
            ),
          );
                      },
                    ),
                  ),

                  //
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
