import 'package:adronall/pages/cart.dart';
import 'package:adronall/pages/orders.dart';
import 'package:adronall/pages/products.dart';
import 'package:adronall/pages/profile.dart';
import 'package:adronall/pages/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}



class _HomeState extends State<Home> {
  final searchController=TextEditingController();
  var _currentPageIndex=0;
  var pageList=[const Products(), const CategoryPage(),const Orders(),const Profile(),const Cart()];
    

  @override
  void initState() {
    // TODO: implement initState
    searchController.addListener(() {
      "object Searching: ${searchController.text}";
     });
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
return Scaffold(
  floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.message),),
      //  drawer: Drawer(backgroundColor: Colors.indigo, child: ListView(),),
       
      
      body: pageList.elementAt(_currentPageIndex),

    bottomNavigationBar: NavigationBar(
      height: 60,
        shadowColor: Colors.deepPurple,
        destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home', tooltip: "",),
        NavigationDestination(icon: Icon(Icons.category), label: 'Category',tooltip: ""),
        NavigationDestination(icon: Icon(Icons.offline_bolt), label: 'Orders',tooltip: ""),
        NavigationDestination(icon: Icon(Icons.person), label: 'Account',tooltip: ""),
        NavigationDestination(icon: Icon(Icons.shopping_cart), label: 'Cart',tooltip: "")
       ],
       
       onDestinationSelected: (int index) {
          setState(() {
            _currentPageIndex= index;
          });
        },
        selectedIndex: _currentPageIndex,
       ),
    );
  }
}
