
import 'package:flutter/material.dart';

class FavoriteList extends StatefulWidget {
  const FavoriteList({super.key});

  @override
  State<FavoriteList> createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
  // json data
  dynamic data = [

    {
      "product_name": " Product 1",
      "image_file": "1.png",
      "price": 10.99,
      "review_count": 143,
      "quantity_or_weight": "1 kg",
      "cut_of_offer" : {
      "is_offer" : "false",
        "offer_style" : "false",
      "offer_cut" : 30
  },
    },
    {
      "product_name": " Product 2",
      "image_file": "2.png",
      "price": 13.50,
      "review_count": 204,
      "quantity_or_weight": "500 g",
      "cut_of_offer" : {
        "is_offer" : "true",
        "offer_style" : "true",
        "offer_cut" : 25
      },

    },
    {
      "product_name": " Product 3",
      "image_file": "3.png",
      "price": 16.25,
      "review_count": 178,
      "quantity_or_weight": "750 g",
      "cut_of_offer" : {
        "is_offer" : "true",
        "offer_style" : "true",
        "offer_cut" : 50
      },
    },
    {
      "product_name": "Product 4",
      "image_file": "4.png",
      "price": 20.00,
      "review_count": 259,
      "quantity_or_weight": "2 pcs",
      "cut_of_offer" : {
        "is_offer" : "true",
        "offer_style" : "false",
        "offer_add" : "New"
      },
    },
    {
      "product_name": "Product 5",
      "image_file": "5.png",
      "price": 6.99,
      "review_count": 89,
      "quantity_or_weight": "300 g",
      "cut_of_offer" : {
        "is_offer" : "false",
        "offer_cut" : 0
      },
    },
    {
      "product_name": "Product 6",
      "image_file": "6.png",
      "price": 6.99,
      "review_count": 89,
      "quantity_or_weight": "300 g",
      "cut_of_offer" : {
        "is_offer" : "true",
        "offer_style" : "true",
        "offer_cut" : 30
      },
    }
  ];







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        title: Text(
          "Favorite List",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 25
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 2,
                    spreadRadius: 1
                  )
                ]
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,radius: 25,
                child: Icon(Icons.dashboard,color: Colors.green,),
              ),
            ),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Item count title
            Text(
              "Showing 64 Items",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.w500
              ),
            ),
            // all product Card
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: .5
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 4,
                            children: [
                              Image(
                                image: AssetImage("assets/product_grid_02/${data[index]["image_file"]}"),
                                height: 160,
                                width: 160,
                              ),
                              Text(
                                "\$ ${data[index]["price"]}",
                                style: TextStyle(
                                    color: Color(0xFFB6D3CC),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15

                                ),

                              ),
                              Text(
                                "${data[index]["product_name"]}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20

                                ),

                              ),
                              Text(
                                "Review ${data[index]["review_count"]}",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12

                                ),

                              ),

                              // button
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: 10,
                                children: [
                                  Icon(Icons.add_to_photos,color: Color(0xFFB6D3CC)),
                                  Text(
                                    "Add to Cart",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15

                                    ),

                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        // offer
                        data[index]["cut_of_offer"]["is_offer"] == "true" ? Positioned(
                    top: 4,
                    left: 4,
                    child: Container(
                    decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(13))
                    ),
                    width: 50,
                    height: 20,
                    child: Center(
                    child: Text(
                      data[index]["cut_of_offer"]["offer_style"] == "true" ? "- ${data[index]["cut_of_offer"]["offer_cut"]}% off" : "${data[index]["cut_of_offer"]["offer_add"]}",
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                    fontWeight: FontWeight.w700
                    ),
                    ),
                    ),
                    )

                    ) : SizedBox(),
                        // Positioned(
                        //     top: 4,
                        //     left: 4,
                        //     child: Container(
                        //       decoration: BoxDecoration(
                        //           color: Colors.red,
                        //           borderRadius: BorderRadius.only(topLeft: Radius.circular(13))
                        //       ),
                        //       width: 50,
                        //       height: 20,
                        //       child: Center(
                        //         child: Text(
                        //           "- 30% off",
                        //           style: TextStyle(
                        //               color: Colors.white,
                        //               fontSize: 8,
                        //               fontWeight: FontWeight.w700
                        //           ),
                        //         ),
                        //       ),
                        //     )
                        //
                        // ),
                        // favorite icon
                        Positioned(
                          top: 15,
                          right: 15,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),

                        ),
                      ],
                    );
                  },),
            )
          ],
        ),
      ),
    );
  }
}
