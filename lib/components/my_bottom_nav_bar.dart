import "package:flutter/material.dart";
import 'package:flutter_application_1/constants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        // bottom: kDefaultPadding * 0.75 // for Apple Device
        right: kDefaultPadding * 2,
        left: kDefaultPadding * 2,
      ),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.30),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.star,
                color: kPrimaryColor,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: kPrimaryColor,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.person,
                color: kPrimaryColor,
              ),
              onPressed: () {}),
        ],
      ),
    );
  }
}
