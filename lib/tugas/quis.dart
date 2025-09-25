import 'package:flutter/material.dart';

class Quis extends StatelessWidget {
  const Quis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Training",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold )),
              Icon(Icons.calendar_month),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Your Program", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text("Details>", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),),
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                height: 200,
                width:625,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  gradient: LinearGradient(colors: [const Color.fromARGB(255, 223, 61, 251), const Color.fromARGB(255, 239, 227, 241)])
                ),
              )],
          )
        ],
          
        ),
      ),
    );
  }
}