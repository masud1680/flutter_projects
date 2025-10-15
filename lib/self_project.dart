

import 'package:flutter/material.dart';

class SelfProject extends StatefulWidget {
  const SelfProject({super.key});

  @override
  State<SelfProject> createState() => _SelfProjectState();
}

class _SelfProjectState extends State<SelfProject> {
  // store current mark
  int mark = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              // title
              Card(
                color: Colors.white70,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Grading System",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w700,
                      fontSize: 30
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              // Show Your Grade
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: CircleAvatar(
                  radius: 150,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 20,
                    children: [
                      Text(
                        "$mark",
                        style: TextStyle(
                            color:Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w800
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Color(0xFFF5BB10),
                        radius: 50,
                        child: Text(
                          "A+",
                          style: TextStyle(
                            color:Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w800
                          ),
                        ),

                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20,),

              // Show Buttons
              SizedBox(
                // color: Colors.green,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 60,
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          setState(() {
                            if(mark > 0){
                              mark--;
                            }
                          });

                          print(mark);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "-",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 40
                            ),
                          ),
                        )
                    ),
                    ElevatedButton(
                        onPressed: (){
                          setState(() {
                            mark++;
                            print(mark);
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "+",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 40
                            ),
                          ),
                        )
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
