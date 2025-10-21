import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Icon(Icons.arrow_back_rounded),
        ),
        
      ),

      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // login image
              Image(
                image: AssetImage("assets/login_page/login_img.png"),
                width: 150,
                height: 150,
              ),
          
              // input section
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
          
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 20,
                  children: [
                    Text(
                      "Create your Account",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
          
                    // Email field
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFFAFAF9),
                            blurRadius: 1,
                            spreadRadius: 4
                          )
                        ]
                      ),
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextField(
                        decoration: InputDecoration(
                          hintText:"Email",
                          // border: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(10),
                          //   // borderSide: BorderSide(color: Colors.white),
                          //
                          // ),
                          // focusedBorder: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(10),
                          //   borderSide: BorderSide(color: Color(0xFF05DF72)),
                          // ),
                          border: InputBorder.none,
          
          
          
                        ),
                        ),
                      ),
                    ),
                    // Password field
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xFFFAFAF9),
                                blurRadius: 1,
                                spreadRadius: 4
                            )
                          ]
                      ),
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:"Password",
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(10),
                            //   // borderSide: BorderSide(color: Colors.white),
                            //
                            // ),
                            // focusedBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(10),
                            //   borderSide: BorderSide(color: Color(0xFF05DF72)),
                            // ),
                            border: InputBorder.none,
          
          
          
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                    // Confirm Password field
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xFFFAFAF9),
                                blurRadius: 1,
                                spreadRadius: 4
                            )
                          ]
                      ),
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:"Confirm Password",
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(10),
                            //   // borderSide: BorderSide(color: Colors.white),
                            //
                            // ),
                            // focusedBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(10),
                            //   borderSide: BorderSide(color: Color(0xFF05DF72)),
                            // ),
                            border: InputBorder.none,


                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                    // button sign-in
          
                     Card(
                       color: Color(0xFF1447E6),
                       child: Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text(
                                 "Sign In",
                                 style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 20,
                                   fontWeight: FontWeight.w500
          
                                 )
                             ),
                           ],
                         ),
                       ),
                     )
                  ],
                ),
              ),

              SizedBox(height: 20,),
              // others sign up
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),

                child: Column(
                  children: [
                    Text(
                      "- Or Sign Up with -",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15,),
                    // options
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 15,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFF5F5F5),
                                  spreadRadius: 3,
                                  blurRadius: 3,
                                )
                              ]
                          ),

                          height: 55,
                          width: 80,
                          child: Center(
                            child: Image(image: AssetImage("assets/login_page/google_img.png")),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFF5F5F5),
                                  spreadRadius: 3,
                                  blurRadius: 3,
                                )
                              ]
                          ),

                          height: 55,
                          width: 80,
                          child: Center(
                            child: Image(
                                image: AssetImage("assets/login_page/fb_img.jpeg"),
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFF5F5F5),
                                  spreadRadius: 3,
                                  blurRadius: 3,
                                )
                              ]
                          ),

                          height: 55,
                          width: 80,
                          child: Center(
                            child: Image(
                                image: AssetImage("assets/login_page/twitter_img.png"),
                              width: 45,
                              height: 45,
                            ),
                          ),
                        ),

                      ],
                    )
                  ],
                )
              ),

            ],
          ),
        ),
      ),
    );
  }
}
