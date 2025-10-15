import 'package:flutter/material.dart';

class FoodProductGrid extends StatefulWidget {
  const FoodProductGrid({super.key});

  @override
  State<FoodProductGrid> createState() => _FoodProductGridState();
}

class _FoodProductGridState extends State<FoodProductGrid> {
  // json data
  dynamic data = [
    {
      "product_name": " Product",
      "image_file": "download.png",
      "price": 9.99,
      "review_count": 152,
      "quantity_or_weight": "1 pc"
    },
    {
      "product_name": " Product 1",
      "image_file": "download (1).png",
      "price": 14.49,
      "review_count": 98,
      "quantity_or_weight": "500 g"
    },
    {
      "product_name": " Product 2",
      "image_file": "download (2).png",
      "price": 19.99,
      "review_count": 245,
      "quantity_or_weight": "1 kg"
    },
    {
      "product_name": " Product 3",
      "image_file": "download (3).png",
      "price": 11.75,
      "review_count": 187,
      "quantity_or_weight": "750 g"
    },
    {
      "product_name": " Product 4",
      "image_file": "download (4).png",
      "price": 7.25,
      "review_count": 65,
      "quantity_or_weight": "250 g"
    },
    {
      "product_name": " Product 5",
      "image_file": "download (5).png",
      "price": 22.50,
      "review_count": 311,
      "quantity_or_weight": "2 pcs"
    },
    {
      "product_name": " Product 6",
      "image_file": "download (6).png",
      "price": 17.90,
      "review_count": 134,
      "quantity_or_weight": "1.5 kg"
    },
    {
      "product_name": " Product",
      "image_file": "images.png",
      "price": 8.80,
      "review_count": 72,
      "quantity_or_weight": "1 pc"
    },
    {
      "product_name": " Product 1",
      "image_file": "images (1).png",
      "price": 10.99,
      "review_count": 143,
      "quantity_or_weight": "1 kg"
    },
    {
      "product_name": " Product 2",
      "image_file": "images (2).png",
      "price": 13.50,
      "review_count": 204,
      "quantity_or_weight": "500 g"
    },
    {
      "product_name": " Product 3",
      "image_file": "images (3).png",
      "price": 16.25,
      "review_count": 178,
      "quantity_or_weight": "750 g"
    },
    {
      "product_name": "Product 4",
      "image_file": "images (4).png",
      "price": 20.00,
      "review_count": 259,
      "quantity_or_weight": "2 pcs"
    },
    {
      "product_name": "Product 5",
      "image_file": "images (5).png",
      "price": 6.99,
      "review_count": 89,
      "quantity_or_weight": "300 g"
    }
  ]

  ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          "Food Grid"
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 60),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              childAspectRatio: .900,
              mainAxisSpacing: 10,
              mainAxisExtent: 150,

            ),

          itemCount: data.length,
          itemBuilder: (context, index) {
            // a single card
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF5EFD8),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFD4D4D4),
                          spreadRadius: 1,
                          blurRadius: 5
                        ),

                      ]
                    ),
                    width: 100,
                    height: 100,
                    child: Image(
                      image: AssetImage("assets/product_grid_01/${data[index]["image_file"]}"),

                    ),
                  ),
                ),
                  Text(
                    "${data[index]["product_name"]}",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w800
                    ),
                  ),
                  Text(
                    "${data[index]["quantity_or_weight"]}",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        fontWeight: FontWeight.w500
                    ),
                  )
              ],
            );
          },


        ),
      ),
    );
  }
}
