import 'package:flutter/material.dart';

class Mapping extends StatelessWidget {
  const Mapping({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> myList = [
      {
        "Name": "Sandikha",
        "Age": 23,
        "favColor": ["Black", "Red", "Amber", "Black", "Red", "Amber", "Black", "Red", "Amber", "Black", "Red", "Amber"],
      },
      {
        "Name": "Yusuf",
        "Age": 25,
        "favColor": ["White", "Red", "Green", "Black", "Red", "Amber", "Black", "Red", "Amber", "Black", "Red", "Amber"],
      },
       {
        "Name": "Aila",
        "Age": 20,
        "favColor": ["Black", "Red", "Amber", "Black", "Red", "Amber", "Black", "Red", "Amber", "Black", "Red", "Amber"],
      },
       {
        "Name": "Putri",
        "Age": 23,
        "favColor": ["Black", "Red", "Amber", "Black", "Red", "Amber", "Black", "Red", "Amber", "Black", "Red", "Amber"],
      },
       {
        "Name": "Cipaa",
        "Age": 23,
        "favColor": ["Black", "Red", "Amber", "Black", "Red", "Amber", "Black", "Red", "Amber", "Black", "Red", "Amber"],
      },
    ];

    return Scaffold(
      appBar: AppBar(title: Text("ID apps")),
      body: ListView(
        children: myList.map((data) {
          List myfavcolor = data["favColor"];
          return Card(
            margin: EdgeInsets.all(20),
            color: Colors.black.withOpacity(0.1),
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.person, color: Colors.black),
                      SizedBox(width: 10),
                      Column(
                        
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name : ${data['Name']}"),
                          Text("Age : ${data['Age']}"),
                        ],
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: myfavcolor.map((color) {
                        return Container(
                          color: Colors.blueGrey,
                          margin:
                              const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            color,
                            style: const TextStyle(color: Colors.white),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
