
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 20, left: 10, right: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //column 01
                  Column(
                    children: [
                      // container 01
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF0B93F4),
                          border: Border.all(color: Colors.black,width: 1,),
                          borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                        height: 150,
                        width: 150,
                      ),
                      // container o2
                      SizedBox(height: 20,),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFF0F2F0),
                          border: Border.all(color: Color(0XFF0CC624), width: 2,),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(80), bottomLeft: Radius.circular(8), bottomRight: Radius.circular(9))
                        ),
                        height: 180,
                        width: 180,
                        child: Center(
                          child: Text(
                            "Hello",
                            style: TextStyle(color: Colors.black, fontSize: 40,),
                          ),
                        ),
                      ),
                    ],
                  ),

                  //column 02
                  Column(
                    children: [
                      // Container 01
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF62D8F8),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        height: 80,
                        width: 200,
                        child: Center(
                          child: Text(
                            "I am a text.",
                            style: TextStyle(color: Color(0xFF077C9D), fontSize: 30, ),
                          ),
                        ),
                      ),

                      // Container 02
                      SizedBox(height: 20,),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF8205A8),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        height: 200,
                        width: 200,

                        // under container 01
                        child: Container(
                          margin: EdgeInsets.only(top: 120),
                          decoration: BoxDecoration(
                            color: Color(0xFF06CBC4),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          height: 100,
                          width: 100,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              // last container
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(color: Colors.red, width: 4,),
                ),
                height: 100,
                width: 300,

                child: Center(
                  child: Text(
                    "Material Widget",
                    style: TextStyle(color: Colors.black,fontSize: 40, ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    )
  );
}
