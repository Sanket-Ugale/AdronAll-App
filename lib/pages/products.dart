import 'package:adronall/consts/colors.dart';
import 'package:adronall/pages/%E1%B8%B7oginPage.dart';
import 'package:adronall/pages/viewProduct.dart';
import 'package:adronall/pages/widgets/productBannerCard.dart';
import 'package:adronall/pages/widgets/productCard.dart';
import 'package:adronall/pages/notifications.dart';
import 'package:adronall/pages/widgets/mainSlider.dart';
import 'package:adronall/pages/widgets/productCardLarge.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'widgets/productCardSmall.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(floatHeaderSlivers: true,headerSliverBuilder: (context,innerBoxIsScrolled)=>[SliverAppBar(
          floating: true,
          iconTheme: const IconThemeData(color: Colors.black,),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Image.asset("assets/icons/icon.png",width: 45,height: 45,color: mainColor,),
              const SizedBox(width: 10,),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 9),
                width: 190,
                height: 35,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: TextField(
                    style: TextStyle(color: mainColor),
                    onChanged: (value) {
                      // ignore: avoid_print
                      print("object searching:${searchController.text}");
                    },
                    controller: searchController,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: mainColor),
                      enabledBorder:  OutlineInputBorder(borderSide: BorderSide(color: mainColor,width: 1.7),borderRadius: BorderRadius.circular(15)),
                      
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: mainColor,width: 1.7),
                        borderRadius: BorderRadius.circular(23),
                      ),
                      suffixIcon:  InkWell(onTap: () {
                        // ignore: avoid_print
                        print("Search clicked:${searchController.text}");
                      },child: Icon(Icons.search,color: mainColor,)),
                      hintText: "Search",
                    ),
                    textAlignVertical: TextAlignVertical.bottom,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
               InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const loginPage(),));
                // GoRouter.of(context).pushNamed(AdronAllRouteNames.cartRouteName);
              },child: const Icon(Icons.person,),),
              const SizedBox(
                width: 15,
              ),
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Notifications(),));
                // GoRouter.of(context).pushNamed(AdronAllRouteNames.wishlistRouteName);
              },child: const Icon(Icons.notifications,)),
            ],
          ),
        )], 
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mainSlider(),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // mainSlider(),
                  productCardSmall(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                  productCardSmall(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                  productCardSmall(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                  productCardSmall(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                  productCardSmall(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                  productCardSmall(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                  productCardSmall(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                  productCardSmall(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                  productCardSmall(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                  productCardSmall(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                  productCardSmall(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                  productCardSmall(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                ],
              ),              
              ),
              Container(margin: const EdgeInsets.only(left: 15,top: 15,bottom: 5),
                child: const Text("Large Cards",style: TextStyle(fontSize: 18),textAlign: TextAlign.left,)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  // mainSlider(),
                  InkWell(onTap:() =>  Navigator.push(context, MaterialPageRoute(builder: (context) => const viewProduct(),)), child: const productCard(imageUrls: 'https://source.unsplash.com/featured/300x203')),
                  const productCard(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                ],
              ),
                  const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // mainSlider(),
                  productCard(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                  productCard(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                ],
              ),
                  const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // mainSlider(),
                  productCard(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                  productCard(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                ],
              ),
                  const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // mainSlider(),
                  productCard(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                  productCard(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                ],
              ),
                  const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // mainSlider(),
                  productCard(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                  productCard(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                ],
              ),
                  const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // mainSlider(),
                  productCard(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                  productCard(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                ],
              ),
    
              // small cards
              Container(margin: const EdgeInsets.only(left: 15,top: 15,bottom: 5),
                child: const Text("Small Card",style: TextStyle(fontSize: 18),textAlign: TextAlign.left,)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // mainSlider(),
                  productCardSmall(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                  productCardSmall(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                  productCardSmall(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                ],
              ),
    
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // mainSlider(),
                  productCardSmall(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                  productCardSmall(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                  productCardSmall(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                ],
              ),
                Container(margin: const EdgeInsets.only(left: 15,top: 15,bottom: 5),
                child: const Text("Large Cards",style: TextStyle(fontSize: 18),textAlign: TextAlign.left,)),
    
               const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // mainSlider(),
                    productCardLarge(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                    productCardLarge(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                    productCardLarge(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                  ],
                ),
               ),
                Container(margin: const EdgeInsets.only(left: 15,top: 15,bottom: 5),
                child: const Text("Banner Cards",style: TextStyle(fontSize: 18),textAlign: TextAlign.left,)),
    
               const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // mainSlider(),
                    productBannerCard(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                    productBannerCard(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                    productBannerCard(imageUrls: 'https://source.unsplash.com/featured/300x203'),
                  ],
                ),
               )
    
            ]
            
          ),
          
        ),),
        // appBar: AppBar(
       
          
        //   title:
           
        // ),
        ),
    );
  }
}