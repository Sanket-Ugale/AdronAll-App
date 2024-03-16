import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class productCardSmall extends StatelessWidget {
  const productCardSmall({super.key, required this.imageUrls});
  final String imageUrls;
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      height: 90,
      width: 80,
      margin: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              offset: Offset.zero,
              blurRadius: 1,
              spreadRadius: 1,
              blurStyle: BlurStyle.normal,
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // image:DecorationImage(image: image),
          // Image.network(imageUrls),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageUrls),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            // margin: const EdgeInsets.all(5),
            height: 57,
            width: 80,
            child: null,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10, right: 5, bottom: 5),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Product Name",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
