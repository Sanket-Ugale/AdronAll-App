import 'package:adronall/pages/widgets/cartCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:NestedScrollView(headerSliverBuilder: ((context, innerBoxIsScrolled) => [SliverAppBar(
      title: Text("My Cart"),
    )]), body: Column(children: [cartCard(productName: "productName", quantity: 12, price: 12323, productImage: 'https://source.unsplash.com/featured/300x203', orderStatus: "orderStatus")],)));
  }
}