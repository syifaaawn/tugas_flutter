import 'package:flutter/material.dart';

class TugasLayout extends StatelessWidget {
  const TugasLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Good morning, ",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                Text("Syifaaawn",style: TextStyle(fontSize: 22)),
              ],
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  height: 200,
                  width: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: const Color.fromARGB(255, 37, 115, 250),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Earnings",
                          style: TextStyle(color: Colors.white70, fontSize: 16)),
                      SizedBox(height: 10),
                      Row(
                        children: [
                      Text("\$",
                          style: TextStyle(
                              fontSize: 32,
                              color: const Color.fromARGB(255, 222, 220, 220))),
                      Text("8,350",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                        ],
                      ),
                      SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        width: 130,
                        height: 17,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: const Color.fromARGB(255, 48, 109, 224),
                        ),
                        child: Text("+ 10% since last month", style: TextStyle(fontSize: 10,color: Colors.white),),
                      ),
                    ],
                  ),
                ),

                SizedBox(width: 20),

                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 37, 115, 250),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("98",
                                style: TextStyle(
                                  fontSize: 18, color: Colors.white)),
                          ),
                          SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Rank",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 16)),
                              Text("In top 30%",
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 15),

                  
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 37, 115, 250),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text("32",
                                    style: TextStyle(
                                        fontSize: 18,color: Colors.white)),
                              ),
                              SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Projects",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16)),
                                  Text("8 this month",
                                      style: TextStyle(color: Colors.grey)),
                                ],
                              ),
                            ],
                          ),

                          SizedBox(height: 10),

            
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text("mobile app",
                                    style: TextStyle(fontSize: 12)),
                              ),
                              SizedBox(width: 8),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text("branding",
                                    style: TextStyle(fontSize: 12)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
