import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopping_app/product.dart';
import 'package:shopping_app/product_card.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          leading: const BackButton(
            color: Colors.black,
          ),
          title: const Text(
            "Shopping app",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(scrollDirection: Axis.vertical,child: Wrap(
          children: [
            product_card(product: sampleProduct5,),
            product_card(product: sampleProduct2),
            product_card(product: sampleProduct4),
            product_card(product: sampleProduct2),
            product_card(product: sampleProduct4),
            product_card(product: sampleProduct5,),
            product_card(product: sampleProduct2),
            product_card(product: sampleProduct4),
          ],
        )),

      ),
    );
  }
}
