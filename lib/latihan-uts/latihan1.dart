import 'package:flutter/material.dart';

class Latihan1 extends StatelessWidget {
  const Latihan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Menu",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Icon(Icons.person, color: Colors.black),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    height: 65,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 5),
                        Text(
                          "Search for Anything",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 80,
                  width: 95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: const Color.fromARGB(255, 208, 37, 24),
                  ),
                  child: Image(image: AssetImage("gambar/burger.png")),
                ),

                Container(
                  padding: EdgeInsets.all(10),
                  height: 80,
                  width: 95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: const Color.fromARGB(255, 232, 231, 231),
                  ),
                  child: Image(image: AssetImage("gambar/pizza.png")),
                ),

                Container(
                  padding: EdgeInsets.all(10),
                  height: 80,
                  width: 95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: const Color.fromARGB(255, 232, 231, 231),
                  ),
                  child: Image(image: AssetImage("gambar/momo.png")),
                ),

                Container(
                  padding: EdgeInsets.all(10),
                  height: 80,
                  width: 95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: const Color.fromARGB(255, 232, 231, 231),
                  ),
                  child: Image(image: AssetImage("gambar/pastry.png")),
                ),
              ],
            ),
            SizedBox(height: 5),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text( "Burger", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                Text( "Pizza", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold,),),
                Text("Momo", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold,),),
                Text("Pastry",style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold,),),
              ],
            ),
            SizedBox(height: 8),
            Text(
              "Friday Offer",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 8),

            Stack(
              
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 181, 28, 28),
                        Color.fromARGB(255, 239, 227, 241),
                      ],
                    ),
                  ), 
                ),
                 Positioned(
                right: -90,
                bottom: -25,
                child: Image.asset("gambar/cola.png", width: 200,)),
                Positioned(
                right:  10,
                bottom: -35,
                child: Image.asset("gambar/burger.png",width: 130,)),
                Positioned(
                  top: 30,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("Get", style: TextStyle(color: Colors.white, fontSize: 15),),
                    Text("FREE COKE", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),),
                    Text("On every burger", style: TextStyle(color: Colors.white, fontSize: 15),),],
                    
                    
                  ))
              ],
            ),
          ], 
        ), 
      ), 
    ); 
  }
}
