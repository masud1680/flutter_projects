
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        bottomNavigationBar: BottomAppBar(
          color: Colors.yellow,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home, color: Colors.green,),
              Icon(Icons.search, color: Colors.red,),
              Icon(Icons.message, color: Colors.green,),
              Icon(Icons.notifications, color:Colors.black,),
              Icon(Icons.settings, color: Colors.grey,)
            ],
          )
        ),



        

        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadiusGeometry.circular(10),
            ),
            height: 250,
            width: 450,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle
                ),

              margin: EdgeInsets.only(top: 10,bottom: 10)

            ),

          
          ),
          
        ),

      )
    )
  );
}


