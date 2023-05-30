import 'package:final_flutter_project/Moudels/SpClass.dart';
import 'package:final_flutter_project/Splash.dart';
import 'package:final_flutter_project/dataBase/DB.dart';
import 'package:flutter/material.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SpHelper.inisp();
  await DbHelper.dbHelper.initDb();
  runApp(MaterialApp(home: Splash(),));
}
