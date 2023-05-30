import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Views/AddProduct.dart';
import '../Views/ShowAllProduct.dart';
import '../Views/ShowMyCarrt.dart';
import '../dataBase/DB.dart';


class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController pC=PageController();
  refresh(){
    setState((){});
  }

  int Pindex=0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // بنقدر نستغني عنه
      bottomNavigationBar: BottomNavigationBar(onTap: (x){
        pC.jumpToPage(x);
        Pindex=x;
        setState(() {});
      }, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "All Products"),
        BottomNavigationBarItem(icon: Icon(Icons.add_circle),label: "Add New Product"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "My Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
      ],currentIndex: Pindex,),
      appBar: AppBar(title: Text('Store app'),),
      body: PageView(children: [
        ShowAllProducts(),
        AddProduct(),

       //UserCartActivity(User("name", "email", DbHelper.dbHelper.getAllInCart() as List<Cart>),),
      ],controller: pC,),
    )
    ;
  }
}