import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_zen/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 25,
            ),

            Text(
              "Sushi Zen",
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 28, color: Colors.white),
            ),
            const SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/nigiri.png'),
            ),

            const SizedBox(
              height: 25,
            ),

            Text(
              "THE TASTE OF JAPANESE FOOD",
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 44, color: Colors.white),
            ),

            const SizedBox(
              height: 10,
            ),

            Text(
              "Feel the taste of the most popular Japanese food from anywhere and anytime",
              style: TextStyle(color: Colors.grey[300], height: 2),
            ),

            const SizedBox(
              height: 25,
            ),

            // shop name

            // icon

            //title

            // subtitle

            // get started button
            MyButton(
                text: "GET STARTED",
                onTap: () {
                  // go to menu page
                  Navigator.pushNamed(context, '/menupage');
                })
          ],
        ),
      ),
    );
  }
}
