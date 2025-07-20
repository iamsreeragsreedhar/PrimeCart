import 'package:flutter/material.dart';
import 'package:flutter_website_task/Feature/Homepage/Presenation/Bloc/bloc/category_bloc.dart';
import 'package:flutter_website_task/Feature/Homepage/Presenation/Bloc/bloc/category_state.dart';
import 'package:flutter_website_task/Feature/Homepage/Presenation/Screens/Homepage.dart';
import 'package:flutter_website_task/Feature/ProductDetails/Bloc/bloc/cart_bloc.dart';
import 'package:flutter_website_task/Feature/ProductDetails/Presentation/Data/Model.dart';
import 'package:flutter_website_task/Feature/ProductDetails/Presentation/Screens/CheckoutPage.dart';
import 'package:flutter_website_task/Feature/ProductDetails/Presentation/Screens/PlaceOrder.dart';
import 'package:flutter_website_task/Feature/ProductDetails/Presentation/Screens/ProductCart.dart';
import 'package:flutter_website_task/Feature/ProductDetails/Presentation/Screens/ProductDetails.dart';
import 'package:flutter_website_task/Feature/Register/Register.dart';
import 'package:flutter_website_task/test.dart';
import 'package:go_router/go_router.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => Homepage(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => Register(),
    ),
//    GoRoute(
//   path: '/product-details',
//   builder: (context, state) {
//     final product = state.extra as ProductDetailsArgs;
//     return ProductDetails(
//       productImage: product.productImage,
//       productName: product.productName,
//       productPrice: product.productPrice,
//       DiscountPrice: product.DiscountPrice,
//       productdescription: product.productdescription,
//       rating: product.rating,
//       Shipping: product.Shipping,
//       warranty: product.warranty,
//     );
//   },
// ),

GoRoute(
  path: '/productDetails',
  builder: (context, state) {
    final categoryState = context.watch<CartBloc>().state;
    if (categoryState.selecteddetails != null) {
      return ProductDetails();
    } else {
      return const Homepage(); 
    }
  },
),
   GoRoute(
      path: '/Checkout',
      builder: (context, state) {
         return Checkoutpage();
      },
    ),

    GoRoute(
  path: '/placeOrder',
  builder: (context, state) {
    return PaymentMethodPage();
  },
),
GoRoute(
      path: '/productCart',
      builder: (context, state) => CartPage(),
    ),



  ],
);
