import 'package:flutter/material.dart';
import 'package:latihan_flutter/latihan/page/page1.dart';
import 'package:latihan_flutter/latihan/page/page2.dart';
import 'package:latihan_flutter/tugas/quis.dart';


void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
    Widget build(BuildContext context) {
      return MaterialApp(
       // routes: {
        //  "/" : (context)=>Page1(),
         // "/halaman2":(context)=>Page2()
       // },
       // initialRoute: "/",
       home: Quis(),
      );
    }
  }

