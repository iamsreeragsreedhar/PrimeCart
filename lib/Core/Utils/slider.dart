import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Sliderwidget extends StatefulWidget {
  const Sliderwidget({super.key});

  @override
  State<Sliderwidget> createState() => _SliderwidgetState();
}

class _SliderwidgetState extends State<Sliderwidget> {

  var imageList=[
    "assets/banner/banner1.webp",
    "assets/banner/banner2.webp",
    "assets/banner/banner3.webp",
    "assets/banner/banner4.webp",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.4,
      child:CarouselSlider(
   items: imageList.map((item) => Image.asset(item, fit: BoxFit.fill,),
   ).toList(),
   options: CarouselOptions(
      height: MediaQuery.of(context).size.height * 0.4,
      viewportFraction: 1.0,
      aspectRatio: 16 / 9,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      enlargeFactor: 0.3,
      scrollDirection: Axis.horizontal,
   )
 )
    );
  }
}