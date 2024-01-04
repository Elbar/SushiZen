import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_zen/components/button.dart';
import 'package:sushi_zen/models/food.dart';
import 'package:sushi_zen/pages/food_details_page.dart';
import 'package:sushi_zen/theme/colors.dart';

import '../components/food_tile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}
//navigate to food item details page



class _MenuPageState extends State<MenuPage> {
  List foodMenu = [
    Food(
        name: "California Sushi",
        price: "21.99",
        imagePath: "lib/images/california.png",
        rating: "4.9"),
    Food(
        name: "Tobiko",
        price: "32.99",
        imagePath: "lib/images/tobiko.png",
        rating: "4.8"),
    Food(
        name: "Uramaki",
        price: "38.99",
        imagePath: "lib/images/uramaki.png",
        rating: "4.6"),
  ];

  void navigateToFoodDetails(int index) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => FoodDetailsPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.grey[900]),
        title: Text(
          'Tokyo',
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // promo message
                    Text(
                      'Get 24% promo',
                      style: GoogleFonts.dmSerifDisplay(
                          fontSize: 20, color: Colors.white),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    MyButton(text: "Redeem", onTap: () {})
                  ],
                ),
                Image.asset(
                  'lib/images/sashimi.png',
                  height: 100,
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Search here...",
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Food Menu",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                  fontSize: 18),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodMenu.length,
                  itemBuilder: (context, index) => FoodTile(
                        food: foodMenu[index],
                        onTap: () {
                          navigateToFoodDetails(index);
                        },
                      ))),

          SizedBox(
            height: 25,
          ),

          //popular food

          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "lib/images/sashimi.png",
                      height: 60,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sashimi",
                          style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "\$21.00",
                          style: TextStyle(color: Colors.grey[700]),
                        )
                      ],
                    ),
                    Icon(
                      Icons.favorite_outline,
                      color: Colors.grey,
                      size: 28,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
        // promo banner

        // search bar

        // menu list

        // popular food
      ),
    );
  }
}
