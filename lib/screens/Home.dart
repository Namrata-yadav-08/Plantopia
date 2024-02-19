import 'package:flutter/material.dart';
import 'package:plantopia/widgets/Gardner_Profile_Container.dart';
import 'package:plantopia/widgets/Offer_Column.dart';
import 'package:plantopia/widgets/inputFields.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController search=TextEditingController();
  @override
  Widget build(BuildContext context) {
    // AppBar(title: Text("Varanasi"),);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Icon(Icons.edit_location,color: Colors.green,),
            Text("Varanasi",style: TextStyle(color: Colors.green),),
            Spacer(),
            Icon(Icons.notification_add_rounded)
          ],
        ),
      ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                CustomInputField(hintText: "Search", controller: search, icon: Icons.search),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                    OfferColumn(colorname: Color.fromRGBO(234, 246, 239, 1)),
                    OfferColumn(colorname: Color.fromRGBO(255, 188, 153, 1)),
                  
                    ]),
                ),
                Row(
                  
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Text("Recommended gardener for you",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)],
                ),
                Row(
                  children: [
                    Gardner_Profile_Container(imagePath: "assets/images/Ellipse 1.png", title: "Selamet Raharjo", Review: "(150 review)"),
                    Gardner_Profile_Container(imagePath: "assets/images/Ellipse 1.png", title: "Selamet Raharjo", Review: "(150 review)"),
                  ],
                ),
                Row(
                  children: [
                    Gardner_Profile_Container(imagePath: "assets/images/Ellipse 1.png", title: "Selamet Raharjo", Review: "(150 review)"),
                    Gardner_Profile_Container(imagePath: "assets/images/Ellipse 1.png", title: "Selamet Raharjo", Review: "(150 review)"),

                  ],
                )
              ],
            ),
          ),
    );
  }
}