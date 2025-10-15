

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
            
              children: [
                Container(
                  // margin: EdgeInsets.symmetric(horizontal: 30),
                  // color: Colors.green,
                  height: 250,
                  width: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                          image: AssetImage("assets/CoderAngon.png"),
                        width: 200,
                        height: 200,
            
                      ),
                      Text(
                        "CREATE YOUR ACCOUNT",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                // Input box container
                Container(
                  // color: Colors.red,
                  height: 400,
                  width: double.infinity,
                  child: Column(
                    children: [
                      TextFormField(
                        // controller: _usernameController,
                        decoration: const InputDecoration(
                          labelText: 'Full Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10),

                            )
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your username';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20,),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Phone Number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),

                        ),
                      ),
                      SizedBox(height: 20,),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Confirm Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          )
                        ),
                      ),
                      SizedBox(height: 20,),
                      ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,

                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top:4,bottom: 4,left: 6,right: 6),
                            child: Text(
                              "SIGN UP",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 28,

                              ),
                            ),
                          )

                      ),
                      SizedBox(height: 20,),
                      Text(
                        "Already have a account? Log In",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300
                        ),
                      )
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
