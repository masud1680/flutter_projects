import 'package:flutter/material.dart';

class MobileCard extends StatefulWidget {
  const MobileCard({super.key});

  @override
  State<MobileCard> createState() => _MobileCardState();
}

class _MobileCardState extends State<MobileCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Mobile Card",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 2),

        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 230,
                  width: double.infinity,
                  child: Row(
                    children: [
                      // image container
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 160,
                          width: 120,
                          child: Image(
                            image: NetworkImage(
                              "https://img.drz.lazcdn.com/static/bd/p/d3a6f6c7f84410f315a6e7684ac86532.jpg_960x960q80.jpg_.webp",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      // Card details
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // name section
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 4,
                                children: [
                                  // product name
                                  Text(
                                    "Techno spark 20 Pro",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 20,
                                    ),
                                  ),
                                  // product model
                                  Text(
                                    "SKU: GJH9879-434",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                    ),
                                  ),
                                  // ratings section
                                  Row(
                                    children: [
                                      // count rating
                                      Text(
                                        "4.5",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      for (int i = 0; i < 5; i++)
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                          color: i == 4
                                              ? Colors.grey
                                              : Colors.yellow,
                                        ),
                                      SizedBox(width: 10),
                                      // review count
                                      Text(
                                        "3,1543 Reviews",
                                        style: TextStyle(
                                          color: Colors.yellow,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  //color choice section
                                  Row(
                                    spacing: 5,
                                    children: [
                                      CircleAvatar(
                                        minRadius: 10,
                                        backgroundColor: Colors.green,
                                      ),
                                      CircleAvatar(
                                        minRadius: 10,
                                        backgroundColor: Colors.yellow,
                                      ),
                                      CircleAvatar(
                                        minRadius: 10,
                                        backgroundColor: Colors.blue,
                                      ),
                                      Text(
                                        "White Color",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),

                                  //other information
                                  Row(
                                    children: [
                                      Text(
                                        "Operating System : ",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10,
                                        ),
                                      ),
                                      Text(
                                        "Android 15",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Display : ",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10,
                                        ),
                                      ),
                                      Text(
                                        "6.5\" IPS",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Display Resolution : ",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10,
                                        ),
                                      ),
                                      Text(
                                        "2340 * 1060",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "CPU : ",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10,
                                        ),
                                      ),
                                      Text(
                                        "Mediatek Helio G80, 2000MGh, 8 Core",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "RAM size : ",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10,
                                        ),
                                      ),
                                      Text(
                                        "4 Gb",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Build-in memory : ",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10,
                                        ),
                                      ),
                                      Text(
                                        "64 Gb",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              // price section
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                spacing: 4,
                                children: [
                                  // icon
                                  Row(
                                    children: [
                                      Icon(Icons.more_vert),
                                      Icon(Icons.table_chart_rounded),
                                    ],
                                  ),

                                  // discount price
                                  Text(
                                    "\$ 488.99",
                                    style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  // sell price
                                  Text(
                                    "\$ 2,139.49",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  // increment button
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE5E5E5),
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xFFFAFAFA),
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                        ),
                                      ],
                                    ),
                                    height: 35,
                                    width: 110,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // plus count minus button
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            spacing: 5,
                                            children: [
                                              // minus
                                              // ElevatedButton(
                                              //     onPressed: (){},
                                              //   style: ElevatedButton.styleFrom(
                                              //     backgroundColor: Colors.grey,
                                              //
                                              //   ),
                                              //     child: Icon(
                                              //         Icons.remove,
                                              //       size: 15,
                                              //     ),
                                              // ),

                                              //-------
                                              Text(
                                                "-",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              // count
                                              Text(
                                                "10",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),

                                              // --------
                                              Text(
                                                "+",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),

                                              // plus
                                              // ElevatedButton(
                                              //   onPressed: (){},
                                              //   child: Icon(
                                              //     Icons.add,
                                              //     size: 15,
                                              //   ),
                                              // ),
                                            ],
                                          ),
                                        ),
                                        // add to card icon
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFFFF8904),
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xFFFAFAFA),
                                                spreadRadius: 1,
                                                blurRadius: 3,
                                              ),
                                            ],
                                          ),
                                          height: 35,
                                          width: 50,
                                          child: Icon(
                                            Icons.shopping_cart_checkout,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // posision
                Positioned(
                  left: 60,
                  top: 6,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF7F22FE),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    height: 40,
                    width: 80,
                    child: Center(
                      child: Text(
                        "PREMIUM",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
