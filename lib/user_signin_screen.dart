import 'package:flutter/material.dart';

class UserSignupScreen extends StatefulWidget {
  const UserSignupScreen({super.key});

  @override
  State<UserSignupScreen> createState() => _UserSignupScreenState();
}

class _UserSignupScreenState extends State<UserSignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "Let's get started!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              "Create your new account",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),

      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),

        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              SizedBox(height: 20),
              // input box

              // name
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),

                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Name",
                    hintStyle: TextStyle(fontSize: 13),
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Color(0xFFD6D3D1),
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Color(0xFF31C950),
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              // Email
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),

                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email Address",
                    hintStyle: TextStyle(fontSize: 13),
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Color(0xFFD6D3D1),
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Color(0xFF31C950),
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              //Password
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),

                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(fontSize: 13),
                    isDense: true,
                    suffixIcon: Icon(Icons.visibility_off, size: 22),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Color(0xFFD6D3D1),
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Color(0xFF31C950),
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              //Confirm password
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),

                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(fontSize: 13),
                    isDense: true,
                    suffixIcon: Icon(Icons.visibility_off, size: 22),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Color(0xFFD6D3D1),
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Color(0xFF31C950),
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              //Text
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),

                child: Text(
                  "By Creating an account or continue with Google, you agree to our terms and conditions and Privacy Policy.",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                  ),
                ),
              ),
              // Create account button
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),

                child: Card(
                  color: Color(0xFF2F3650),
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Create account",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // border or
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),

                child: Row(
                  spacing: 10,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.grey,
                        height: 2,
                        width: double.infinity,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          "or",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.grey,
                        height: 2,
                        width: double.infinity,
                      ),
                    ),
                  ],
                ),
              ),
              // continue google btn
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey, width: 2),
                ),
                height: 50,
                width: double.infinity,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Image(
                      image: AssetImage("assets/login_page/google_img.png"),
                      width: 50,
                      height: 50,
                    ),
                    Text(
                      "Sign in with Google",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              //last Text with sign in button
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 5,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "Sign in",
                      style: TextStyle(
                        color: Color(0xFF2F3650),
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
