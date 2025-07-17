import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_website_task/Feature/Homepage/Data/Category/Catagory%20repository.dart';
import 'package:flutter_website_task/Feature/Homepage/Presenation/Bloc/bloc/category_bloc.dart';
import 'package:flutter_website_task/Feature/Homepage/Presenation/Bloc/bloc/category_event.dart';
import 'package:flutter_website_task/Feature/Homepage/Presenation/Screens/Homepage.dart';
import 'package:flutter_website_task/Feature/ProductDetails/Bloc/bloc/cart_bloc.dart';
import 'package:flutter_website_task/Feature/Register/Register.dart';
import 'package:flutter_website_task/Feature/Routes.dart';
import 'package:flutter_website_task/test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: Size(1440, 1024),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<CategoryBloc>(
        create: (context) => CategoryBloc(Catagoryrepository())..add(FetchCategories()),
      ),
      BlocProvider<CartBloc>(
        create: (context) => CartBloc(),
      ),
    ],
      
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        // home:  Register(),
        routerConfig: router,
          // home:  PaymentMethodPage(),
      ),
    );
  }
}
