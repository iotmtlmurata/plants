import 'package:flutter/material.dart';
import 'package:plant_app/screens/compomemts/detials_screen.dart';

import '../../../constants.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomentPlanCard(
            image: "assets/images/image_1.png",
            title: "SAMANTHA",
            country: "RUSSIA",
            price: 400,
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetialScreen(),
                ),
              );
            },
          ),
          RecomentPlanCard(
            image: "assets/images/image_2.png",
            title: "SAMANTHA",
            country: "RUSSIA",
            price: 400,
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetialScreen(),
                ),
              );
              // print("RUSSIA");
            },
          ),
          RecomentPlanCard(
            image: "assets/images/image_3.png",
            title: "SAMANTHA",
            country: "RUSSIA",
            price: 400,
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetialScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecomentPlanCard extends StatelessWidget {
  const RecomentPlanCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.country,
      required this.price,
      required this.onPress})
      : super(key: key);

  final String image, title, country;
  final int price;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: onPress,
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23)),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button),
                      TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ))
                    ]),
                  ),
                  const Spacer(),
                  Text(
                    "\$$price",
                    style: const TextStyle(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
