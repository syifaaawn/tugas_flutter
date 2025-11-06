import 'package:flutter/material.dart';

class L_uts extends StatelessWidget {
  const L_uts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Padding(
      padding: const EdgeInsets.all(30.0),
      child: ListView(
        children: [
          Text("Menu", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
          SizedBox(height: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: const Color.fromARGB(255, 204, 204, 204),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    Text("Search for anything")
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding:EdgeInsets.all(8.0),
                    height: 80,
                    width: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: const Color.fromARGB(255, 164, 45, 37),
                    ),
                    child: Image(image: AssetImage("gambar/burger.png"), width: 10, height: 10,)
                    ),

                    Container(
                    padding:EdgeInsets.all(8.0),
                    height: 80,
                    width: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: const Color.fromARGB(255, 218, 215, 215),
                    ),
                    child: Image(image: AssetImage("gambar/pizza.png"), width: 10, height: 10,)
                    ),

                    Container(
                    padding:EdgeInsets.all(8.0),
                    height: 80,
                    width: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: const Color.fromARGB(255, 218, 215, 215),
                    ),
                    child: Image(image: AssetImage("gambar/momo.png"), width: 10, height: 10,)
                    ),

                    Container(
                    padding:EdgeInsets.all(8.0),
                    height: 80,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: const Color.fromARGB(255, 218, 215, 215),
                    ),
                    child: Image(image: AssetImage("gambar/pastry.png"), width: 20, height: 10,)
                    ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Burger", style: TextStyle(color: const Color.fromARGB(255, 100, 100, 100),)),
                  Text("Pizza" , style: TextStyle(color: const Color.fromARGB(255, 100, 100, 100),)),
                  Text("Dimsum", style: TextStyle(color: const Color.fromARGB(255, 100, 100, 100),)),
                  Text("Pastry", style: TextStyle(color: const Color.fromARGB(255, 100, 100, 100),)),
                ],
              ),
              SizedBox(height: 20,),
              Text("Friday Offer", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), ),

              SizedBox(height: 20,),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding: EdgeInsets.all(8.0),
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(begin: AlignmentGeometry.topLeft, end: AlignmentGeometry.topRight, 
                      colors: [const Color.fromARGB(255, 174, 44, 35), const Color.fromARGB(255, 244, 106, 97),]),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),          
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Get", style: TextStyle(color: Colors.white),),
                        Text("FREE COKE", style: TextStyle(color: Colors.white , fontSize: 20, fontWeight: FontWeight.bold),),
                        Text("on every burger", style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -20,
                    right: -90,
                    child: Image.asset("gambar/cola.png", width: 200),
                  ),
                    Positioned(
                    bottom: -30,
                    right: 10,
                    child: Image.asset("gambar/burger.png", width: 130),
                  ),
                  

                  
                ],
              ),
              SizedBox(height: 25,),
                  Text("Today's Deal",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(

                          child: Container(
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 202, 202, 202),
                              borderRadius: BorderRadius.all(Radius.circular(10)),),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5, left: 25),
                                      child: Image(image: AssetImage("gambar/burger.png"), width: 130,fit: BoxFit.fitWidth,),
                                    ),
                                    Text("Beff Burger"),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Rp. 50.000", style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 184, 147, 36)),),
                                        Icon(
                                          Icons.add_circle,
                                          color: Colors.green,
                                          size: 25,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Container(
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 202, 202, 202),
                              borderRadius: BorderRadius.all(Radius.circular(10)),),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5, left: 25),
                                      child: Image(image: AssetImage("gambar/pizza.png"), width: 130,fit: BoxFit.fitWidth,),
                                    ),
                                    Text("Pizza Mantap"),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Rp. 100.000", style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 184, 147, 36)),),
                                        Icon(
                                          Icons.add_circle,
                                          color: Colors.green,
                                          size: 25,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 1, right: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 10,),
                          Expanded(

                          child: Container(
                            height: 200,
                            width: 175,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 202, 202, 202),
                              borderRadius: BorderRadius.all(Radius.circular(10)),),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only( left: 25),
                                      child: Image(image: AssetImage("gambar/momo.png"), width: 140,fit: BoxFit.fitWidth,),
                                    ),
                                    Text("Pangsit Keju"),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Rp. 50.000", style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 184, 147, 36)),),
                                        Icon(
                                          Icons.add_circle,
                                          color: Colors.green,
                                          size: 25,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                          ),
                        ),
                    
                          SizedBox(width: 10,),
                          Expanded(
                            child: Container(
                              height: 200,
                              width: 180,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 202, 202, 202),
                                borderRadius: BorderRadius.all(Radius.circular(10)),),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5, left: 25),
                                        child: Image(image: AssetImage("gambar/pastry.png"), width: 130,fit: BoxFit.fitWidth,),
                                      ),
                                      Text("Kue Matcha"),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Rp. 100.000", style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 184, 147, 36)),),
                                          Icon(
                                            Icons.add_circle,
                                            color: Colors.green,
                                            size: 25,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                            ),
                          ),
                      ],
                    ),
                  )
            ],
          ),
        ],
      ),
    ),);
  }
} 