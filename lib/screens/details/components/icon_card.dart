import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({Key key, this.icon}) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: kPrimaryColor.withOpacity(0.22),
            offset: Offset(0, 15),
            blurRadius: 22,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-15, -15),
            blurRadius: 20,
          )
        ],
      ),
      child: Icon(
        Icons.donut_large,
        color: kPrimaryColor,
      ),
    );
  }
}
