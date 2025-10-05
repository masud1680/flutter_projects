
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF7C0BD9),
          centerTitle: true,
          title: Text(
              "Assignment 3",
            style: TextStyle(color: Colors.yellow, fontSize: 40),
          ),
        ),

        body: Container(
          margin: EdgeInsets.only(top: 30),


          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFD90BC4),
                  border:Border.all(color: Colors.grey, width: 2)
                ),
                height: 150,
                width: 200,
                child: Center(
                  child: Text(
                    "iPhone",
                    style: TextStyle(color: Colors.white,fontSize: 50, fontWeight: FontWeight.w200),
                  ),
                ),
              ),

              Container(
                decoration: BoxDecoration(

                    border:Border.all(color: Colors.black, width: 2),
                ),
                height: 150,
                width: 300,
                alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "iPhone",
                          style: TextStyle(color: Colors.black,fontSize: 30, fontWeight: FontWeight.w800,),
                        ),
                        Text(
                          "iPhone is the stylist phone ever",
                          style: TextStyle(color: Colors.black,fontSize: 20, fontWeight: FontWeight.w100,),
                        ),
                        Text(
                          "Price : 1000",
                          style: TextStyle(color: Colors.black,fontSize: 30, fontWeight: FontWeight.w100,),
                        ),
                      ],
                    ),


              )
            ],
          ),
        ),
      ),

    )
  );
}
