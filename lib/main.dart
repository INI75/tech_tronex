import 'package:flutter/material.dart';
import 'package:tech_tronex/screen/sections/home/home_screen.dart';
import 'package:tech_tronex/screen/sections/products/product_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tech Tronex',
      debugShowCheckedModeBanner: false,
    theme: ThemeData(
        fontFamily: 'Satoshi',
        colorScheme: ColorScheme.fromSeed(
            seedColor:const Color.fromRGBO(3, 51, 87, 1)),
        useMaterial3: true,
      ),
      home: const  HomeScreenView(),
       routes: {

        HomeScreenView.routeName :(context) => const   HomeScreenView(),
        ProductScreen.routeName : (context) => const ProductScreen()
       },
    );
  }
}
