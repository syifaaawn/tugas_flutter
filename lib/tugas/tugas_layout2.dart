import 'package:flutter/material.dart';

class TugasLayout2 extends StatelessWidget {
  const TugasLayout2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color.fromARGB(255, 71, 201, 75), Color.fromARGB(255, 25, 235, 21)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0, 0.5),
              child: Image.asset("gambar/gambar2.png", width: 340),
            ),
            Align(
              alignment: Alignment(0, 0.10),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                  height: 600,
                  width: 340,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(115, 255, 255, 255),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Lets\nExplore Our\nDiversity",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Positioned(
              right: -200,
              bottom: 0,
              child: Image.asset("gambar/gambar3.png", width: 425),
            ),
          ],
        ),
      ),
    );
  }
}
