import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.white, elevation: 0 ,title: Text(""),), body: Center(child: Text("Wishlist"),),);
  }
}