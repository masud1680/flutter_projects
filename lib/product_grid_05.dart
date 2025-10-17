import 'package:flutter/material.dart';

class AddItemScreen extends StatefulWidget {
  const AddItemScreen({super.key});

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
  // json
  dynamic data = [
    {
      "name": "Chocolate Croissant",
      "price": 2.50,
      "quantity": 30
    },
    {
      "name": "Blueberry Muffin",
      "price": 2.75,
      "quantity": 45
    },
    {
      "name": "Sourdough Loaf",
      "price": 5.00,
      "quantity": 15
    },
    {
      "name": "Cinnamon Roll",
      "price": 3.25,
      "quantity": 25
    },
    {
      "name": "Red Velvet Cupcake",
      "price": 3.50,
      "quantity": 40
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Add Item",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 20,),
            Text(
              "Type here any items name",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Color(0xFFD4D4D4),
              height: 1,
              width: double.infinity,
            ),
            SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Text(
                            "${data[index]["name"]}",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          Container(

                            decoration: BoxDecoration(

                              border: Border.all(color: Colors.grey,width: 1)
                            ),
                            height: 20,
                            width: 20,
                            child: Center(
                                child: Icon(
                                    Icons.add,
                                    size: 15,
                                )
                            ),
                          ),

                        ],
                      ),
                    );
                  },
              ),
            ),
            // 3rd section
            SizedBox(height: 20,),
            Text(
              "ADDED",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Color(0xFFD4D4D4),
              height: 1,
              width: double.infinity,
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                itemCount:  2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(

                        children: [
                          Icon(Icons.star_border,color: Colors.green,),
                          SizedBox(width: 5,),
                          Text(
                            "Chocolate",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.remove,color: Colors.blue,),
                          SizedBox(width: 12,),
                          Text(
                            "1 Pcs",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 12,),
                          Icon(Icons.add,color: Colors.blue,),

                        ],
                      ),
                    );
                  },
              ),
            ),

          ],
        ),
      ),

    );
  }
}
