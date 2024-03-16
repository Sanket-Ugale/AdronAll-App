import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class cartCard extends StatelessWidget {
  const cartCard(
      {super.key,
      required this.productName,
      required this.quantity,
      required this.price,
      required this.productImage,
      required this.orderStatus});
  final String productName;
  final double price;
  final int quantity;
  final String productImage;
  final String orderStatus;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10),
      margin: const EdgeInsets.all(9),
      height: 88,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset.zero,
              blurRadius: 1,
              spreadRadius: 2,
              blurStyle: BlurStyle.normal,
            ),
          ]),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            child: Image.network(productImage),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(productName),
              Text(price.toString()),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkWell(child: Icon(Icons.add,size: 20,),),
                  // Text(quantity.toString(),style: TextStyle(color: Colors.black),),
                  Chip(
                    side: BorderSide.none,
                    shadowColor: Colors.black,
                    label: const Text(""),
                    avatar: CircleAvatar(
                      child: Text(
                        quantity.toString(),
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  InkWell(child: Icon(Icons.remove,size: 20,),),
                  
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
            Icon(Icons.shopping_cart,color: Color.fromARGB(255, 1, 189, 7),),
            Icon(Icons.delete,color: Color.fromARGB(207, 243, 16, 0),)
          ],)
        ],
      ),
    );
  }
}
