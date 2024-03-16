import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

class productCardLarge extends StatefulWidget {
  const productCardLarge({super.key, required this.imageUrls});
  final String imageUrls;

  @override
  State<productCardLarge> createState() => _productCardLargeState();
}

class _productCardLargeState extends State<productCardLarge>     with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  bool liked = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      height: 230,
      width: 160,
      margin: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              offset: Offset.zero,
              blurRadius: 1,
              spreadRadius: 2,
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
                  image: NetworkImage(widget.imageUrls),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))),
            // margin: const EdgeInsets.all(5),
            height: 160,
            width: 180,
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
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Product Name",
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Price",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.black),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (liked == false) {
                                liked = true;
                                _controller.forward();
                              } else {
                                {
                                  liked = false;
                                  _controller.reverse();
                                }
                              }
                            },
                            child: Lottie.network(
                                'https://lottie.host/98cb2ef5-059e-4ac9-aecb-a7eca287c667/XBKPQs9VIF.json',
                                controller: _controller),
                          ),
                          // Icon(Icons.favorite,
                          //     color: Colors.grey[350],
                          //     // size: 24.0,
                          // )
                        ],
                      )
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
