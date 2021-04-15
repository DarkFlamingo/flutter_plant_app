import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_bottom_nav_bar.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/home/components/body.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.android),
          onPressed: () {},
        ));
  }
}
