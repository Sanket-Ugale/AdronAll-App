import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class viewProduct extends StatefulWidget {
  const viewProduct({super.key});

  @override
  State<viewProduct> createState() => _viewProductState();
}

class _viewProductState extends State<viewProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(floatHeaderSlivers: true, headerSliverBuilder: (context,innerBoxIsScrolled)=>[SliverAppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Product name",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        // backwardsCompatibility: true,
      )], body: SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(5),
        child: Column(
          children: [
            
            
          ],
        ),
      ),
    ),),
    );
  }
}