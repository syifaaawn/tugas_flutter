import 'package:flutter/material.dart';

class LatihanKolom extends StatelessWidget {
  const LatihanKolom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Latihan Kolom"),
      backgroundColor: const Color.fromARGB(255, 238, 172, 194),
      foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Container(width: 100,height: 150, color: Colors.deepPurpleAccent),
        Container(width: 100,height: 150, color: Colors.indigo),
        Container(width: 100, height: 150, color: Colors.pink),
      ],
      ),
    );
  }
}