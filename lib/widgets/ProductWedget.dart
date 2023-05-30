
import 'package:flutter/cupertino.dart';

import '../Moudels/Converter.dart';

class Task_Wedget extends StatelessWidget{
  Product prod;
  Task_Wedget(this.prod,this.fun);
  Function fun;
  @override
  Widget build(BuildContext context) {

    return Column(children: [
      Row(
        children: [
          Text(prod?.name??'')
        ],
      ),Row(
        children: [
          Column(children: [
            Text(prod.info??'')
          ],),
          Column(
            children: [
              Text("${prod.price}\$")
            ],
          )
        ],
      )
    ],);
  }
}