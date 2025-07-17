import 'package:flutter/material.dart';
import 'package:flutter_website_task/Feature/Homepage/Data/Category/Categorymodel.dart';
import 'package:flutter_website_task/Feature/Homepage/Presenation/Screens/Homepage.dart';
import 'package:flutter_website_task/Feature/ProductDetails/Presentation/Data/Model.dart';
import 'package:flutter_website_task/Feature/ProductDetails/Presentation/Screens/ProductDetails.dart';
import 'package:flutter_website_task/Feature/Register/Register.dart';
import 'package:flutter_website_task/test.dart';
import 'package:go_router/go_router.dart';

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
// GoRoute(
//   path: '/productDetails',
//   builder: (context, state) {
//     final product = state.extra as ProductModel;
//     return ProductDetails(product: product);
//   },
// ),


  ],
);
