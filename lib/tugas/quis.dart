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
            Row(
              children: [
                Icon(Icons.chevron_left),
                Icon(Icons.calendar_month),
                Icon(Icons.chevron_right)
              ],
            ),
            ], 
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Your Program", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text("Details >", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),),
            ],
          ),
          SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 200,
                padding: EdgeInsets.only(left: 30, top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(120),bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)),
                  gradient: LinearGradient(colors: [const Color.fromARGB(255, 162, 42, 183), const Color.fromARGB(255, 239, 227, 241)])
                ),
                child: Stack(
                  children:[ Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Next Workout", style: TextStyle( fontSize: 15, color: Colors.white),),
                      Text("Lets Toning", style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
                      Text("and Glutes Workout", style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
                      SizedBox(height: 35),
                      Row(
                        children: [
                          Icon(Icons.timer, color: Colors.white,),
                          SizedBox(width:7),
                          Text("60 min", style: TextStyle( fontSize:17,color:  Colors.white),),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(35)),
                            ),
                            child: Icon(Icons.play_arrow, color: const Color.fromARGB(255, 188, 39, 208), size: 25),
                          )
                        ],

                      ),
                    ],
                  ),
                  ],
                ),
              ),
        Container(
          child: Stack(
            
          ),
        
        )
        ],
          
        ),
      ),
    );
  }
}