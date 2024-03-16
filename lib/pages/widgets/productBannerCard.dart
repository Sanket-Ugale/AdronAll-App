import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class productBannerCard extends StatelessWidget {
  const productBannerCard({super.key, required this.imageUrls});
  final String imageUrls;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // color: Colors.white,
        height: 200,
        width:MediaQuery.of(context).size.width-40,
        margin: const EdgeInsets.all(25),
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
                    image: NetworkImage(imageUrls),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))),
              // margin: const EdgeInsets.all(5),
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: null,
            ),
       
          ],
        ),
      ),
    );
  }
}
