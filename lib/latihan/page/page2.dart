import 'package:flutter/material.dart';
import 'package:latihan_flutter/latihan/page/page1.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman 2"),
        backgroundColor: const Color.fromARGB(255, 3, 31, 78),
        foregroundColor: Colors.white,
      ),
      body: Center(child: Text("ini Halaman 2")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, "/");
        },
        child: Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
