import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2FAFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFF2FAFF),
        title: Row(
          children: [
            Image(image: AssetImage("assets/logo.png"), width: 60, height: 60),
            Text(
              "Pharma",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              "Mate",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),

        actions: [
          Padding(
            padding: EdgeInsetsGeometry.directional(end: 20),
            child: Stack(
              children: [
                Icon(Icons.notifications_outlined, size: 35),
                Positioned(
                  top: 7,
                  right: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    height: 10,
                    width: 10,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      // main body Column
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(11)),
                  boxShadow: [
                    BoxShadow(
                    color: Color(0xFFE7E5E4),
                    blurRadius: 3,
                    spreadRadius: 1,
        
                  )
                    ],
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: TextField(
                            decoration: InputDecoration(
        
                              hintText: "Search",
                              hintStyle: TextStyle(color: Colors.grey),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Icon(Icons.search,color: Color(0xFFA6A09B),),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 0),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(Radius.circular(10)),
        
                              ),
        
                            ),
                  ),
                ),
              ),
            ),
            // Today title big card
            Column(
              children: [
        
        
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/main_title_big_card.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    height: 200,
                    width: double.infinity,
        
                    // card text
                    child: Padding(
                      padding: const EdgeInsets.only(left:12.0, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 30,
                        children: [
                          Card(
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(10)
                            ),
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsetsGeometry.symmetric(vertical: 4, horizontal: 6),
                              child: Text(
                                "TODAY",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 12
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
        
                            width: 160,
        
                            child: Text(
                              "FREE shipping for ALL orders",
                              style: TextStyle(
                                color: Color(0xFF003F6A),
                                fontSize: 20,
                                fontWeight: FontWeight.w900
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 8,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 4,
        
                    ),
                    for(int i=0; i<=3; i++)
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 4,
        
                      )
                  ],
                )
              ],
            ),
            // Categories section
        
            Padding(
              padding: EdgeInsetsGeometry.only(top: 20, bottom: 20, left: 10),
              child: Column(
        
                children: [
                  // categories title section
                  Padding(
                    padding: const EdgeInsetsGeometry.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Categories",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "SHOW ALL",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // categories cards section
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 5),
                      child: Row(
                        spacing: 10,
                        children: [
        
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
        
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFFE7E5E4),
                                        blurRadius: 3,
                                        spreadRadius: 1,
        
                                      )
                                    ]
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 40,
        
                                  child: CircleAvatar(
                                    radius: 36,
                                    backgroundImage: AssetImage("assets/circle_image_01.png"),
                                  ),
                                ),
                              ),
                              Text(
                                "Care",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
        
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFFE7E5E4),
                                        blurRadius: 3,
                                        spreadRadius: 1,
        
                                      )
                                    ]
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 40,
        
                                  child: CircleAvatar(
                                    radius: 36,
                                    backgroundImage: AssetImage("assets/circle_image_02.png"),
                                  ),
                                ),
                              ),
                              Text(
                                "Heart",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
        
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFFE7E5E4),
                                        blurRadius: 3,
                                        spreadRadius: 1,
        
                                      )
                                    ]
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 40,
        
                                  child: CircleAvatar(
                                    radius: 36,
                                    backgroundImage: AssetImage("assets/circle_image_03.png"),
                                  ),
                                ),
                              ),
                              Text(
                                "Brain",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
        
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFFE7E5E4),
                                        blurRadius: 3,
                                        spreadRadius: 1,
        
                                      )
                                    ]
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 40,
        
                                  child: CircleAvatar(
                                    radius: 36,
                                    backgroundImage: AssetImage("assets/circle_image_04.png"),
                                  ),
                                ),
                              ),
                              Text(
                                "Stomach",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
        
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFFE7E5E4),
                                        blurRadius: 3,
                                        spreadRadius: 1,
        
                                      )
                                    ]
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 40,
        
                                  child: CircleAvatar(
                                    radius: 36,
                                    backgroundImage: AssetImage("assets/circle_image_02.png"),
                                  ),
                                ),
                              ),
                              Text(
                                "Brain",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
        
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFFE7E5E4),
                                        blurRadius: 3,
                                        spreadRadius: 1,
        
                                      )
                                    ]
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 40,
        
                                  child: CircleAvatar(
                                    radius: 36,
                                    backgroundImage: AssetImage("assets/circle_image_04.png"),
                                  ),
                                ),
                              ),
                              Text(
                                "Stomach",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500
                                ),
                              )
                            ],
                          ),
        
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
        
            // popular products section
        
            Column(
              children: [
        
                // Popular title
                Padding(
                  padding: const EdgeInsetsGeometry.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 23
                        ),
                      ),
                      Text(
                        "SHOW ALL",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontSize: 12
                        ),
                      ),
                    ],
                  ),
                ),
        
                // popular all cards
                Padding(
                  padding: const EdgeInsetsGeometry.symmetric(vertical: 20),
                  child: Wrap(spacing: 15,
                    children: [
                      for(int i=1; i <= 10; i++)
                      // Popular Cards
                        Stack(
                          children: [
                            Card(
                              color: Colors.white,
                              elevation: 8.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(10)
                              ),

                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  spacing: 15,
                                  children: [
                                    Image(
                                      image: AssetImage("assets/baby_care.png"),
                                      height: 120,

                                    ),
                                    // card middle text
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "pampers",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          "Baby diapers",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                        Text(
                                          "size - 2(4-8 kg), 99 pcs",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.min,
                                      spacing: 40,
                                      children: [
                                        // price
                                        Text(
                                          "\$99",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 20
                                          ),
                                        ),
                                        // add to card
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadiusGeometry.circular(8)
                                          ),
                                          height: 30,
                                          width: 40,
                                          child: Icon(
                                            Icons.shopping_cart_outlined, color: Colors.white,
                                          ),

                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                                top: 12,
                                right: 9,
                                child: Icon(Icons.favorite_outline)
                            )
                          ],
                        ),
                    ],
                  ),
                )
              ],
            )
        
          ],
        ),
      ),
      
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50)
          )
        ),
        height: 70,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 30,
          children: [
            IconButton(
                onPressed: (){},
                icon: Icon(
                    Icons.home_filled,
                  size: 30,
                  color: Colors.blue,
                )
            ),
            IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.favorite_border_sharp,
                  size: 30,
                  color: Colors.red,
                )
            ),
            IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                  color: Colors.yellow,
                )
            ),
            IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.person_outline,
                  size: 30,
                  color: Colors.green,
                )
            ),
          ],
        ),
      )
    );
  }
}
