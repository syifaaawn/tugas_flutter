import 'package:flutter/material.dart';
import 'package:latihan_flutter/tugas/tugas_layout2.dart';


void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: TugasLayout2(),
      );
    }
  }

