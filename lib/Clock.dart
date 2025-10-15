import 'package:flutter/material.dart';

class ClockTimer extends StatefulWidget {
  const ClockTimer({super.key});

  @override
  State<ClockTimer> createState() => _ClockTimerState();
}

class _ClockTimerState extends State<ClockTimer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        shadowColor: Colors.green,

        centerTitle: true,
        title: Text(
          "CODERANGON",
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),

      // Body
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFF5F5F4),
                blurRadius: 1,
                spreadRadius: 5,

              )
            ]
          ),
          width: 300,
          height: 250,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(

              children: [
                //low title
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "YOUR HIGH-PRECISION TIMER",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 10
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                //Show timer
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    // Hours
                    Text(
                      "00",
                      style: TextStyle(
                          color: Color(0xFF7F22FE),
                          fontSize: 40,
                          fontWeight: FontWeight.w900
                      ),
                    ),
                    Text(
                      ":",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 40,
                          fontWeight: FontWeight.w900
                      ),
                    ),
                    //Menites
                    Text(
                      "12",
                      style: TextStyle(
                          color: Color(0xFF016630),
                          fontSize: 40,
                          fontWeight: FontWeight.w900
                      ),
                    ),
                    Text(
                      ":",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 40,
                          fontWeight: FontWeight.w900
                      ),
                    ),
                    //Seconds
                    Text(
                      "39",
                      style: TextStyle(
                          color: Color(0xFFFF8904),
                          fontSize: 40,
                          fontWeight: FontWeight.w900
                      ),
                    ),
                    Text(
                      ":",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 40,
                          fontWeight: FontWeight.w900
                      ),
                    ),
                    //Meli seconds
                    Text(
                      "20",
                      style: TextStyle(
                          color: Color(0xFFFB64B6),
                          fontSize: 25,
                          fontWeight: FontWeight.w900
                      ),
                    ),



                  ],
                ),
                SizedBox(height: 20,),

                // clock item title
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 30,
                  children: [
                    // Hours
                    Text(
                      "HOUR",
                      style: TextStyle(
                          color: Color(0xFF7F22FE),
                          fontSize: 10,
                          fontWeight: FontWeight.w400
                      ),
                    ),

                    //MAnIEts
                    Text(
                      "MIN",
                      style: TextStyle(
                          color: Color(0xFF016630),
                          fontSize: 10,
                          fontWeight: FontWeight.w400
                      ),
                    ),

                    //Seconds
                    Text(
                      "SEC",
                      style: TextStyle(
                          color: Color(0xFFFF8904),
                          fontSize: 10,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    //MALE seconds
                    Text(
                      "MS",
                      style: TextStyle(
                          color: Color(0xFFFB64B6),
                          fontSize: 10,
                          fontWeight: FontWeight.w400
                      ),
                    ),



                  ],
                ),
                SizedBox(height: 20,),
                // BUTTONS
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    ElevatedButton(
                        onPressed: (){},
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.blue)
                        ),
                        child: Text(
                          "Start Clock",
                          style: TextStyle(
                            color: Colors.white
                          ),
                        )
                    ),
                    // 2nd button
                    ElevatedButton(
                        onPressed: (){},
                        style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(Color(0xFFFFA1AD))
                        ),
                        child: Text(
                          "Start Clock",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        )
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
