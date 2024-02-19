import 'package:flutter/material.dart';

Widget Gardner_Profile_Container({
  required String imagePath,
  required String title,
  required String Review,
  // required String date,
}) {
  return Container(
    margin: const EdgeInsets.all(15),
    // height: 252,
    width: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: Column(
      children: [
        Container(
          child: CircleAvatar(backgroundImage: AssetImage(imagePath),),
        ),
        Column(
          children: [
            Padding(padding: EdgeInsets.all(3)),
            Container(
              margin: const EdgeInsets.all(3),
              child: Text(title),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star,color: Colors.amber,),
                Icon(Icons.star,color: Colors.amber),
                Icon(Icons.star,color: Colors.amber),
                Icon(Icons.star,color: Colors.amber),
              ],
            ),
            Container(
              margin: EdgeInsets.all(6),
              child: Text(Review,style: TextStyle(color: Colors.grey),),
            ),
            Container(
              margin: EdgeInsets.all(5),
              child: Text("₹250"),
            ),
            // SizedBox(height: 20,),
                   Container(
                    margin: EdgeInsets.all(10),
                     child: InkWell(
                                 onTap: () {
                                   // Add your action here
                                 },
                                 child: Container(
                                   padding: EdgeInsets.all(10),
                                   decoration: BoxDecoration(
                                     color: Colors.green,
                                     borderRadius: BorderRadius.circular(20),
                                   ),
                                   child: Row(
                                     mainAxisSize: MainAxisSize.min,
                                     children: [
                                       Text(
                      "Book",
                      style: TextStyle(fontSize: 15,color: Colors.white),
                                       ),
                                     
                                     ],
                                   ),
                                 )),
                   ),
                   SizedBox(
                    
                   )
          ],
        )
      ],
    ),
  );
}
