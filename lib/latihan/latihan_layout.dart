import 'package:flutter/material.dart';

class LatihanLayout extends StatelessWidget {
  const LatihanLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text("Always be in touch", style: TextStyle(fontSize: 50, fontWeight: FontWeight.w400),
            ),
            Container(
              padding: EdgeInsets.all(15),
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: const Color.fromARGB(255, 236, 189, 244),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Vivo", style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Brazil", style: TextStyle(fontWeight: FontWeight.bold),)],
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("5GB", style: TextStyle(fontWeight: FontWeight.bold),), 
                        Text("Valid for 30 days", style: TextStyle(fontSize: 10),)],
                      ),
                      Text("\$15", style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
                    ],
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}