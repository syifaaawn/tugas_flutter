import 'package:flutter/material.dart';

class List1 extends StatelessWidget {
  const List1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("latihan layout"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Mawar"),
            subtitle: Text("Direktur"),
            leading: Icon(Icons.person),
            hoverColor: Colors.brown,
          ),
        ],
      ),
    );
  }
}