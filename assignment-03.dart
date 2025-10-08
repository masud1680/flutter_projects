//
// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SafeArea(
//           child: Scaffold(
//             backgroundColor: Color(0xFFF3F3F1),
//             appBar: AppBar(
//               backgroundColor: Colors.white,
//               leading: Icon(Icons.menu),
//               centerTitle: true,
//               title: Text(
//                 "Contacts",
//                 style: TextStyle(
//                     color: Color(0xFF6B6966),
//                   fontWeight: FontWeight.w900,
//                   fontSize: 30
//                 ),
//               ),
//               actions: [
//                 Icon(Icons.search,),
//                 SizedBox(width: 20,)
//               ],
//             ),
//
//             body: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   for(int i = 0; i < 10; i++)
//                     Container(
//                       margin: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
//
//                       width: 400,
//                       height: 150,
//
//                       child: Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Row(
//                           spacing: 20,
//                           children: [
//                             CircleAvatar(
//                               backgroundImage: AssetImage("assets/profile1.jpg"),
//                               radius: 40,
//
//
//                             ),
//
//
//
//                             Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   "Masud",
//                                   style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800, ),
//                                 ),
//                                 Text(
//                                   "Hello, how are you ?",
//                                   style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, ),
//                                 ),
//                               ],
//                             ),
//
//
//
//
//                           ],
//                         ),
//                       ),
//                     ),
//                 ],
//               ),
//             )
//           )
//       ),
//     )
//   );
// }



import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
    home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 7,
            shadowColor: Colors.black.withOpacity(0.4),
            leading: Icon(Icons.arrow_back,size: 35,),

            title: Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              child: SizedBox(

                height: 50,



                child: TextField(

                  decoration: InputDecoration(
                      hintText: "Search Groceries or Products",
                      hintStyle: TextStyle(
                        color: Color(0xFFB2AAA9)
                      ),
                      filled: true,
                      fillColor: Color(0xFFF3F2F1),
                      hoverColor: Colors.white,
                      suffixIcon: Icon(Icons.mic),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      )
                  ),
                ),


              ),
            ),
            centerTitle: true,
            actions: [
              Icon(Icons.add_shopping_cart,size: 35,color: Color(0xFFFE9A37),),
              SizedBox(width: 20,)

            ],

    ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsGeometry.only(top: 10),
              child: Column(
                children: [
                  Container(

                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 20),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text(
                          "Fruits & Vegetables",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                              fontFamily: "Arial"),
                        ),


                        SizedBox(

                          height: 50,
                          width: 60,


                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Icon(Icons.filter_list_sharp,color: Colors.grey,),
                              Icon(Icons.apps,color: Colors.grey,)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 20),
                    child: Column(
                      spacing: 30,
                      children: [
                        for(int i = 0; i <10; i++)
                          Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 20,
                          children: [
                            Container(

                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.15), // Shadow color with transparency
                                    spreadRadius: 1, // How far the shadow spreads
                                    blurRadius: 1,   // The blur effect
                                    offset: const Offset(0, 0), // Moves the shadow down by 4 pixels
                                  ),
                                ],
                              ),
                              height: 250,
                              width: 150,

                              child: Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                                      ),
                                      height: 160,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top:2,left: 4 ),
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: SizedBox(
                                                height: 18,
                                                child: Icon(Icons.favorite_border, color: Colors.grey,),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 5),
                                            child: Container(

                                              color: Colors.white,
                                              height: 135,
                                              child: Image(
                                                image: NetworkImage("https://static.vecteezy.com/system/resources/previews/008/522/611/non_2x/fresh-apple-fruit-isolated-on-white-background-with-clipping-path-free-photo.jpg"),
                                                fit: BoxFit.cover,

                                              ),
                                            ),
                                          )

                                        ],
                                      )
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFFEDECF3),
                                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10))
                                    ),

                                    height: 88,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Apple",
                                                style: TextStyle(
                                                    color: Colors.black, fontSize: 15, fontWeight: FontWeight.w800
                                                ),

                                              ),
                                              SizedBox(
                                                width: 50,
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.attach_money, color: Colors.grey,),
                                                    Text(

                                                      "75",
                                                      style: TextStyle(
                                                          color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w800
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        SizedBox(
                                          height: 35,
                                          width: 80,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Color(0xFFE1712B),
                                                  foregroundColor: Colors.white
                                              ),
                                              onPressed: (){},
                                              child: Text(
                                                "ADD",
                                                style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12, color: Colors.white),
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.15),
                                      spreadRadius: 1,
                                      blurRadius: 1
                                    )
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              height: 250,
                              width: 150,

                              child: Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                                      ),
                                      height: 160,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top:2,left: 4 ),
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: SizedBox(
                                                height: 18,
                                                child: Icon(Icons.favorite_border, color: Colors.grey,),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 5),
                                            child: Container(

                                              color: Colors.white,
                                              height: 135,
                                              child: Image(
                                                image: NetworkImage("https://thumbs.dreamstime.com/b/orange-fruit-isolated-white-background-61947616.jpg"),
                                                fit: BoxFit.cover,

                                              ),
                                            ),
                                          )

                                        ],
                                      )
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFFEDECF3),
                                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10))
                                    ),

                                    height: 88,

                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 15, bottom: 12, left: 10, right: 10),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Orange",
                                                style: TextStyle(
                                                    color: Colors.black, fontSize: 15, fontWeight: FontWeight.w800
                                                ),

                                              ),
                                              SizedBox(
                                                width: 50,
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.attach_money, color: Colors.grey,),
                                                    Text(

                                                      "75",
                                                      style: TextStyle(
                                                          color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w800,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        spacing: 6,
                                        children: [

                                          SizedBox(
                                            height: 23,
                                            width: 60,
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor: Color(0xFFFFD6A7),
                                                    foregroundColor: Colors.white,

                                                ),
                                                onPressed: (){},
                                                child: Icon(Icons.remove, color: Color(0xFFE1712B), size: 20,)
                                            ),
                                          ),
                                          Text("2", style: TextStyle(fontWeight: FontWeight.w700),),


                                          SizedBox(
                                            height: 23,
                                            width: 60,
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor: Color(0xFFFFD6A7),
                                                    foregroundColor: Colors.white
                                                ),
                                                onPressed: (){},
                                                child: Icon(Icons.add, color: Color(0xFFE1712B), weight: 900,size: 20,)
                                            ),
                                          )
                                        ],
                                      )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),
    )
    )
    )
  );

}
