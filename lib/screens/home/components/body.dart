import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/home/components/featured_plants.dart';
import 'package:flutter_application_1/screens/home/components/header_with_searchbox.dart';
import 'package:flutter_application_1/screens/home/components/recomends_plants.dart';
import 'package:flutter_application_1/screens/home/components/title_with_more_buttons.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreButtons(title: "Recomended", press: () {}),
          RecomendsPlants(),
          TitleWithMoreButtons(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
