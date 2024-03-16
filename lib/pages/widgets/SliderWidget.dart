import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class SliderWidget extends StatefulWidget {

  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderState();
}

class _SliderState extends State<SliderWidget> {
  final urlImages=[
    'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1555487505-8603a1a69755?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80',
    'https://images.unsplash.com/photo-1491637639811-60e2756cc1c7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8M3xVajI4M3ZEbFVhWXx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1543512214-318c7553f230?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8NHxVajI4M3ZEbFVhWXx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1524805444758-089113d48a6d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTF8fHByb2R1Y3R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1599360889420-da1afaba9edc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjR8fHByb2R1Y3R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1608528577891-eb055944f2e7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzF8fHByb2R1Y3R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1601068785450-ba55f33dfe0c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzR8fHByb2R1Y3R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: urlImages.length,
      itemBuilder: (context,index,realIndex){
        return buildImage(index);
      }, 
      options: CarouselOptions(height: 200, autoPlay: true),);
  }
  
  Widget buildImage(int index) =>Row(
    // mainAxisAlignment: MainAxisAlignment.start,
    // crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 1),
        color: Colors.grey,
        child: Image.network(urlImages[index],fit: BoxFit.cover,),
      ),
      // Container(
      //   margin: EdgeInsets.symmetric(horizontal: 18),
      //   color: Colors.grey,
      //   child: Image.network(urlImage,fit: BoxFit.cover,),
      // ),
    ],
  );
}