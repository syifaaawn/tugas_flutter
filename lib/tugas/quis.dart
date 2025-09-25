import 'package:flutter/material.dart';

class Quis extends StatelessWidget {
  const Quis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Training",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold )),
              Icon(Icons.calendar_today),
            ],
          )
        ],
          
        ),
      ),
    );
  }
}