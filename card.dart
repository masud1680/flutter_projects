
import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            margin: EdgeInsets.only(left: 40, right: 40, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Column(
                  children: [
                    Container(

                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(15),topLeft: Radius.circular(10), topRight: Radius.circular(50))
                      ),
                      height: 100,
                      width: 200,
                      child: Center(
                        child: Text(
                          "Container",
                          style: TextStyle(color: Colors.white, fontSize: 20,),
                        ),
                      ),
                    ),

                    SizedBox(height: 10,),
                    Container(
                      color: Color(0xFFF2F2F3),


                      child: Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Color(0xFF8205A8),
                          borderRadius: BorderRadius.all(Radius.circular(10)),

                        ),

                        width: 150,
                        height: 150,



                        child: Container(
                          margin: EdgeInsets.only(top: 100,left: 30, right: 30,),
                          decoration: BoxDecoration(
                              color: Color(0xFF06CBC4),
                              borderRadius: BorderRadius.circular(15)
                          ),


                        ),


                      ),
                    ),

                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF2F2F3),

                      ),
                      height: 250,
                      width: 180,
                      child: Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10,right: 5,left: 15),
                        decoration: BoxDecoration(
                          color: Color(0xFFC2C2C7),
                          border: Border.all(color: Colors.red, width: 1, ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3), // shadow color
                              spreadRadius: 2, // how wide the shadow spreads
                              blurRadius: 8,   // how soft the shadow looks
                              offset: Offset(8, 10), // (x, y) move right & down
                            )
                          ],
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(60),topLeft: Radius.circular(60)),
                        ),
                      ),

                    ),

                  ],
                ),

                Column(

                  children: [
                    Container(

                      color: Color(0xFFF2F2F3),
                      height: 150,
                      width: 150,
                      child: Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xFF97DFF2),
                          ),
                          height: 100,
                          width: 100,
                          child: Padding(padding: EdgeInsets.all(4),
                            child: Text(
                              "Text",
                              style: TextStyle(color: Color(0xFF1899B9),fontSize: 20, ),
                            ),
                          )
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF107DEB),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
                      ),
                      height: 150,
                      width: 150,
                    ),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF107DEB),
                          borderRadius: BorderRadius.circular(10)
                      ),

                      height: 200,
                      width: 140,

                      child: Center(
                        child: Text(
                          "Hello, Card!",
                          style: TextStyle(color: Colors.white, fontSize: 15,),
                        ),
                      ),

                    )
                  ],
                )
              ],
            ),
          ),
        ),

      )
  );
}
