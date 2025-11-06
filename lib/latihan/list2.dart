import 'package:flutter/material.dart';

class List2 extends StatelessWidget {
  const List2({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> mhs = [
    {"nama": "melati", "usia": 16},
    {"nama": "cipaaa", "usia": 20},
    {"nama": "capiii", "usia": 25},
  ];
    return Scaffold(
      appBar: AppBar(title: Text("latihan layout")),
      body: ListView.builder(
        itemCount: mhs.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(color: mhs[index]["usia"] <= 16 ? Colors.redAccent : Colors.blueAccent, borderRadius: BorderRadius.circular(15)),
              child: ListTile(
                title: Text(mhs[index]["nama"]),
                subtitle: Text(mhs[index]["usia"].toString()),
              )
              ),
          );
        },
      ),
    );
  }
}
