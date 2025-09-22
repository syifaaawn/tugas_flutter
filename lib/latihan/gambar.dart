import 'package:flutter/material.dart';

class Gambar extends StatelessWidget {
  const Gambar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Latihan asset gambar"),
      backgroundColor: Colors.indigoAccent,
      foregroundColor: Colors.white,
      ),
      body: Column(
        children:[
           Image.asset("gambar/gambar1.jpeg",width: 150,height: 100,),
           Image(image: AssetImage("gambar/gambar1.jpeg"), width: 200,
           height: 150),
           Container(
            width: 500,
            height: 350,
            decoration: BoxDecoration(
              color: Colors.brown,
              image: DecorationImage(image: AssetImage("gambar/gambar1.jpeg"),
              fit:BoxFit.fitWidth),
            ),
           )
        ]
      ),
      );
  }
}