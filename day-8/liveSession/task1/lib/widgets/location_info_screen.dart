import 'package:flutter/material.dart';
import 'package:task1/widgets/action_buttons_list.dart';
import 'package:task1/widgets/custom_location_listTile.dart';
import 'package:task1/widgets/location_action_button.dart';

class LocationInfoScreen extends StatelessWidget {
  const LocationInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter layout demo"),
        elevation: 0,
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/images/Camping-tents-Switzerland.jpg",
            height: 250,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                CustomLocationListTile(),
                SizedBox(
                  height: 8,
                ),
                CustomListActionButton(),
                SizedBox(
                  height: 16,
                ),
                Text(
                    "Lake Oeschinen (Oeschinensee) is a stunning alpine lake located near Kandersteg in Switzerland. Nestled at the foot of the towering Blüemlisalp mountain range in the Bernese Oberland, the lake is fed by glacial streams and is known for its vibrant turquoise waters. Surrounded by lush meadows and rugged cliffs, it is a popular destination for hiking, boating, and picnicking, offering breathtaking views and serene natural beauty."),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
