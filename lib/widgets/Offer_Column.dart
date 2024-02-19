import 'package:flutter/material.dart';

Widget OfferColumn({
  required Color colorname

}){


    return Container(
      margin: EdgeInsets.all(17),
      padding: EdgeInsets.all(10),
      width: 350,
      decoration: BoxDecoration(
        
        color: colorname,
        borderRadius: BorderRadius.circular(7)
      
      ),
      child: Column(
      
        children: [
          Row(
            children: [
              Text("Offer AC Service",style: TextStyle(fontWeight: FontWeight.bold),),
              Icon(Icons.info)
            ],
          ),
          Row(
            children:
          [Text("Get 25%",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)],),
          Row(
            children: [
               InkWell(
            onTap: () {
              // Add your action here
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Grab Offer",
                    style: TextStyle(fontSize: 15,color: Colors.green),
                  ),
                  SizedBox(width: 5),
                  Icon(Icons.arrow_forward_ios,color: Colors.green,),
                ],
              ),
            ))
            ],
          )
          ],
      ),
    );
}