import 'package:flutter/material.dart';

class LatihanLayout2 extends StatelessWidget {
  const LatihanLayout2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("gambar/gambar1.jpeg"),
                fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 1),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 249, 174, 95),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
            ),
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                 color: const Color.fromARGB(255, 241, 142, 20),
                 borderRadius: BorderRadius.all(Radius.circular(35))
              ),
              child: Icon(Icons.arrow_left),
            ),

          ],

        ),
      ),
    );
  }
}