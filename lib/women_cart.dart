import 'package:flutter/material.dart';

class WomenCart extends StatefulWidget {
  const WomenCart({super.key});

  @override
  State<WomenCart> createState() => _WomenCartState();
}

class _WomenCartState extends State<WomenCart> {

  // json data
  dynamic  data = [
    {
      "product_name": "Wireless Bluetooth Headphones",
      "price": 59.99,
      "review_count": 2345,
      "image_file": "womencart1.webp"
    },
    {
      "product_name": "Smart Fitness Watch",
      "price": 89.50,
      "review_count": 1870,
      "image_file": "womencart2.jpg"
    },
    {
      "product_name": "Portable Power Bank 20000mAh",
      "price": 39.90,
      "review_count": 950,
      "image_file": "womencart4.jpg"
    },
    {
      "product_name": "USB-C Fast Charging Cable",
      "price": 12.99,
      "review_count": 320,
      "image_file": "womencart4.jpg"
    },
    {
      "product_name": "Noise Cancelling Earbuds",
      "price": 74.99,
      "review_count": 1578,
      "image_file": "womencart3.jpg"
    },
    {
      "product_name": "4K Ultra HD Action Camera",
      "price": 129.00,
      "review_count": 845,
      "image_file": "womencart1.webp"
    },
    {
      "product_name": "Mechanical Gaming Keyboard",
      "price": 99.99,
      "review_count": 2099,
      "image_file": "womencart3.jpg"
    },
    {
      "product_name": "Ergonomic Office Chair",
      "price": 249.00,
      "review_count": 640,
      "image_file": "womencart2.jpg"
    },
    {
      "product_name": "27-inch 2K Monitor",
      "price": 299.99,
      "review_count": 410,
      "image_file": "womencart3.jpg"
    },
    {
      "product_name": "Wireless Mouse",
      "price": 24.50,
      "review_count": 1225,
      "image_file": "womencart4.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        title: Text(
          "Women's Apparel",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 23
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(Icons.more_vert,size: 30,),
          )
        ],
      ),

      //body
      body:Column(

        children: [
          // Results bar
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color:Color(0xFFE4E4E7),
                    spreadRadius: 1,
                    blurRadius: 5,
                  )
                ]
            ),
            height: 60,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${data.length} Results",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  Row(
                    spacing: 5,
                    children: [
                      Text(
                        "Filter & Short",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      Icon(Icons.filter_list_alt)
                    ],
                  )


                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          // Product Cards Section

          Expanded(
            child: ListView.builder(
              // shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric( vertical: 20),
                          child: Row(
                            spacing: 10,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                  image:DecorationImage(image: AssetImage("assets/${data[index]["image_file"]}"))
                                ),
                                height: 200,
                                width: 150,

                              ),
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  spacing: 5,
                                  children: [
                                    // small card limited edition
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      width: 60,
                                      height: 45,
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          "Limited Edition",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    // product name
                                    Text(
                                      "${data[index]["product_name"]}",
                                      maxLines: 2,                 // limit to one line
                                      // overflow: TextOverflow.ellipsis, // show "..." at the end
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 15,
                                      ),

                                    ),
                                    // price
                                    Text(
                                      "\$ ${data[index]["price"]}",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20,
                                      ),
                                    ),
                                    //review
                                    Text(
                                      "(${data[index]["review_count"]} Reviews)",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(

                          top: 8,
                          right: 4,
                          child: Icon(Icons.favorite),
                        ),
                        Positioned(

                          bottom: 8,
                          right: 8,
                          child: Row(
                            spacing: 10,
                            children: [
                              Container(

                                color: Colors.brown,
                                height: 10,
                                width: 10,
                              ),
                              Container(

                                color: Colors.black,
                                height: 10,
                                width: 10,
                              ),
                              Container(

                                color: Colors.grey,
                                height: 10,
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),



        ],
      ),




    );
  }
}
