import 'package:adronall/pages/widgets/categoryCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryState();
}

class _CategoryState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Category"),),
       body: SingleChildScrollView(
         child: Center(child: Column(children: [
          Row(
          children: [
            categoryCard(imageUrls: 'https://source.unsplash.com/featured/300x203',),
            categoryCard(imageUrls: 'https://source.unsplash.com/featured/300x203',),
            categoryCard(imageUrls: 'https://source.unsplash.com/featured/300x203',),
            categoryCard(imageUrls: 'https://source.unsplash.com/featured/300x203',),
          ],
         ),
         Row(
          children: [
            categoryCard(imageUrls: 'https://source.unsplash.com/featured/300x203',),
            categoryCard(imageUrls: 'https://source.unsplash.com/featured/300x203',),
            categoryCard(imageUrls: 'https://source.unsplash.com/featured/300x203',),
            categoryCard(imageUrls: 'https://source.unsplash.com/featured/300x203',),
          ],
         ),
         Row(
          children: [
            categoryCard(imageUrls: 'https://source.unsplash.com/featured/300x203',),
            categoryCard(imageUrls: 'https://source.unsplash.com/featured/300x203',),
            categoryCard(imageUrls: 'https://source.unsplash.com/featured/300x203',),
            categoryCard(imageUrls: 'https://source.unsplash.com/featured/300x203',),
          ],
         ),
         Row(
          children: [
            categoryCard(imageUrls: 'https://source.unsplash.com/featured/300x203',),
            categoryCard(imageUrls: 'https://source.unsplash.com/featured/300x203',),
            categoryCard(imageUrls: 'https://source.unsplash.com/featured/300x203',),
            categoryCard(imageUrls: 'https://source.unsplash.com/featured/300x203',),
          ],
         ),
         Row(
          children: [
            categoryCard(imageUrls: 'https://source.unsplash.com/featured/300x203',),
            categoryCard(imageUrls: 'https://source.unsplash.com/featured/300x203',),
            categoryCard(imageUrls: 'https://source.unsplash.com/featured/300x203',),
            categoryCard(imageUrls: 'https://source.unsplash.com/featured/300x203',),
          ],
         ),
         Row(
        children: [
          categoryCard(imageUrls: 'https://source.unsplash.com/featured/300x203',),
          categoryCard(imageUrls: 'https://source.unsplash.com/featured/300x203',),
          categoryCard(imageUrls: 'https://source.unsplash.com/featured/300x203',),
          categoryCard(imageUrls: 'https://source.unsplash.com/featured/300x203',),
        ],
       )
       
         ],),),
       ),);
  }
}