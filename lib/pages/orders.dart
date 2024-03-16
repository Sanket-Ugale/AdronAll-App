import 'package:adronall/pages/widgets/ordersCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text("Orders"),),
      body: SafeArea(
        child: NestedScrollView(
            headerSliverBuilder: ((context, innerBoxIsScrolled) => [
                  SliverAppBar(
                    floating: true,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                      Text("Orders"),
                      Icon(Icons.search)
                    ],),
                  )
                ]),
            body: SingleChildScrollView(
              child: Center(
                child: Column(children: const [
                  ordersCard(price: 1000, productImage: 'https://source.unsplash.com/featured/300x203', quantity: 2, productName: 'Product Name 1', orderStatus: 'Confirmed',),
                  ordersCard(price: 1000, productImage: 'https://source.unsplash.com/featured/300x203', quantity: 2, productName: 'Product Name 2', orderStatus: 'Confirmed',),
                  ordersCard(price: 1000, productImage: 'https://source.unsplash.com/featured/300x203', quantity: 2, productName: 'Product Name 3', orderStatus: 'Confirmed',),
                  ordersCard(price: 1000, productImage: 'https://source.unsplash.com/featured/300x203', quantity: 2, productName: 'Product Name 4 Product Name 4', orderStatus: 'Confirmed',),
                  ordersCard(price: 1000, productImage: 'https://source.unsplash.com/featured/300x203', quantity: 2, productName: 'Product Name', orderStatus: 'Confirmed',),                
                  ordersCard(price: 1000, productImage: 'https://source.unsplash.com/featured/300x203', quantity: 2, productName: 'Product Name', orderStatus: 'Confirmed',),
                  ordersCard(price: 1000, productImage: 'https://source.unsplash.com/featured/300x203', quantity: 2, productName: 'Product Name', orderStatus: 'Confirmed',),
                  ordersCard(price: 1000, productImage: 'https://source.unsplash.com/featured/300x203', quantity: 2, productName: 'Product Name', orderStatus: 'Confirmed',),
                  ordersCard(price: 1000, productImage: 'https://source.unsplash.com/featured/300x203', quantity: 2, productName: 'Product Name', orderStatus: 'Confirmed',),
                  ordersCard(price: 1000, productImage: 'https://source.unsplash.com/featured/300x203', quantity: 2, productName: 'Product Name', orderStatus: 'Confirmed',),
                  ordersCard(price: 1000, productImage: 'https://source.unsplash.com/featured/300x203', quantity: 2, productName: 'Product Name', orderStatus: 'Confirmed',),
                ],),
              ),
            )),
      ),
    );
  }
}
