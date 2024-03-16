import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class categoryCard extends StatelessWidget {
  categoryCard({super.key, required this.imageUrls});
  final String imageUrls;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
       height: 100,
      width: 78,
      // color: Colors.amber,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset.zero,
              blurRadius: 1,
              spreadRadius: 2,
              blurStyle: BlurStyle.normal,
            ),
          ],),
      child: Column(
        children: [
        
        // CircleAvatar(backgroundImage: NetworkImage(imageUrls),radius: 30,),
      Container(
        height: 80,
        width: 78,
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
        image: DecorationImage( 
          image: NetworkImage(imageUrls),
          fit: BoxFit.cover,
          ),),
          
      ),
      Container(child: Text("data"),)
      
      ],),
     );
  }
}