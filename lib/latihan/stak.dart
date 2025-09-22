import 'package:flutter/material.dart';

class Stak extends StatelessWidget {
  const Stak({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text("Latihan Stack"),
        backgroundColor: const Color.fromARGB(255, 245, 143, 177),
        foregroundColor: const Color.fromARGB(255, 151, 249, 239),
        ),
        body: Center(
          child: Container(
            width: 450,
            height: 400,
            color: const Color.fromARGB(255, 230, 158, 243),
            child: Stack(
            alignment: AlignmentGeometry.center,
              children: [
                Positioned(
                  top: -100,
                  left: 25,
                  child: Container(width: 300, height: 200,color: const Color.fromARGB(255, 230, 17, 17))),
                Align(
                  alignment: Alignment(0.5, -0.75),
                  child: Container(width: 100,height: 100, color: Colors.indigo,
                  child: Text("hello"),)),
                  Positioned(bottom: 10, left: 75,
                    child: Text("INI ANAK STACK"))
              ],
            ),
          ),
        ),
    );
  }
}