
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
            backgroundColor: Color(0xFFEBF4FA),
            appBar: AppBar(
              backgroundColor: Color(0xFFEBF4FA),
              leading: Icon(Icons.keyboard_backspace, fontWeight: FontWeight.w300,size: 30,),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFFFE8C3),
                          radius: 15,
                          child: Icon(Icons.coffee)
                      )
                  ),
                  Text(
                    "Care",
                    style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500, fontSize: 30
                    ),
                  )
                ],
              ),

              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(Icons.tune, fontWeight: FontWeight.w900,),
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  // Search Box Container
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    // margin: EdgeInsetsGeometry.only(right: double.minPositive, left: double.minPositive, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(18))
                    ),
                    height: 60,
                    width: double.infinity,
              
                    child: Align(
                      alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            spacing: 5,
                            children: [
                              Icon(Icons.search, color: Color(0xFF8B8DAB),),
                              Text(
                                "Search",
                                style: TextStyle(color: Color(0xFFB5B5C8),fontSize: 20, fontWeight: FontWeight.w400),
                              ),
              
                            ],
                          ),
                        )
              
                    ),
                  ),
              
                  // All Items Container
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 5, left: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        spacing: 10,
                        children: [
                          for(int i = 0; i <= 10; i++)
                            Card(
                            color: Color(0xFFFAFAFA),
                            elevation: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "baby & clothes",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
              
              
              
                  // All Products Cards
              
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        for(int i=0; i<=10; i++)
                        // Single Products Card
                          Stack(
                            children: [
                              Card(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image(
                                        image: AssetImage("assets/babySmile.png"),
                                        width: 140,
                                        height: 120,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              "Clothes"
                                          ),
                                          Text(
                                            "Baby Cotton Clothes",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700
                                            ),
                                          ),
                                          Text(
                                            "XL, 200Pcs",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        spacing: 30,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "\$25",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 30
                                            ),
                                          ),
                                          Card(
                                            color: Colors.blue,
              
                                            child: Padding(
                                              padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 8),
                                              child: Icon(
                                                Icons.shopping_cart_outlined,
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),Positioned(
                                top: 10,
                                right: 10,
                                child: Icon(
                                  Icons.favorite_border,
              
                                ),
                              )
              
                            ],
                          ),
                      ],
                    ),
                    Column(
                      children: [
                        for(int i=0; i<=10; i++)
                        // Single Products Card
                          Stack(
                            children: [
                              Card(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image(
                                        image: AssetImage("assets/babySmile.png"),
                                        width: 120,
                                        height: 120,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              "Clothes"
                                          ),
                                          Text(
                                            "Baby Cotton Clothes",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700
                                            ),
                                          ),
                                          Text(
                                            "XL, 200Pcs",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        spacing: 30,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "\$25",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 30
                                            ),
                                          ),
                                          Card(
                                            color: Colors.blue,
              
                                            child: Padding(
                                              padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 8),
                                              child: Icon(
                                                Icons.shopping_cart_outlined,
                                                color: Colors.white,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),Positioned(
                                top: 10,
                                right: 10,
                                child: Icon(
                                  Icons.favorite_border,
              
                                ),
                              )
              
                            ],
                          ),
                      ],
                    )
                  ],
                )
              
              
                ],
              ),
            ),
          )
      ),
    )
  );
}