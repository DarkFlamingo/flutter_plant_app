import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FeaturePlantCard(image: "assets/images/flower.jpg", press: () {}),
          FeaturePlantCard(image: "assets/images/flower.jpg", press: () {}),
          FeaturePlantCard(image: "assets/images/flower.jpg", press: () {}),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        child: Container(
          margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2,
          ),
          width: size.width * 0.6,
          height: 250,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Image.asset(
              "assets/images/flower.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
