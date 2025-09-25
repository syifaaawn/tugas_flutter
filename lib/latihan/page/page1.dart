import 'package:flutter/material.dart';
import 'package:latihan_flutter/latihan/page/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman 1"),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(child: Text("ini Halaman 1")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // menggunakan route
          Navigator.pushNamed(context, "/halaman2");

          // Navigator.push(
          //  context,
          // MaterialPageRoute(
          // builder: (context) {
          //  return Page2();
          //},
          // ),
          // );
        },
        child: Icon(Icons.arrow_forward),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
