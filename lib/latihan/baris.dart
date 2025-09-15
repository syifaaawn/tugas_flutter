import 'package:flutter/material.dart';

class LatihanBaris extends StatelessWidget {
  const LatihanBaris({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Baris"),
        backgroundColor: Colors.grey,
        foregroundColor: const Color.fromARGB(255, 6, 6, 6),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
        Container(width: 100,height: 150, color: Colors.deepPurpleAccent),
        Container(width: 100,height: 150, color: Colors.indigo),
        Container(width: 100, height: 150, color: Colors.pink),
        ],
      ),
    );
  }
}