import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/header_with.searchbox.dart';
import 'package:plant_app/screens/home/components/recomends_planrs.dart';

import 'title_with_more_btn.dart';
import 'featured_plants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
              title: "Recomended",
              onPress: () {
                print("More");
              }),
          RecomendsPlants(),
          TitleWithMoreBtn(
              title: "Featured Plants",
              onPress: () {
                print("More2");
              }),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
