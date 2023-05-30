import 'package:final_flutter_project/Auth/Home.dart';
import 'package:final_flutter_project/Moudels/SpClass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Auth/Login_AC.dart';


class Splash extends StatelessWidget  {
  Future<void> navegationmethod(BuildContext context) async {
    bool x = await SpHelper.Check();
    await Future.delayed(Duration(milliseconds: 1500));
    if (x) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) {
          return LoginActivty();
        },
      ));
    } else {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) {
          return Home();
        },
      ));
  }
}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    navegationmethod(context);
    return Scaffold(
      body: Center(child: Text('Welcom To The Shopping Applacation ',
        style: TextStyle(color: Colors.indigoAccent,fontSize: 36,fontWeight: FontWeight.bold)
        ,)
        ,),
    );
  }
}



