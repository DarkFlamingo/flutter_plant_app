import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/details/components/icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Padding(
        padding: EdgeInsets.only(bottom: kDefaultPadding * 3),
        child: SizedBox(
          height: size.height * 0.75,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          padding:
                              EdgeInsets.symmetric(horizontal: kDefaultPadding),
                          icon: Icon(
                            Icons.arrow_back,
                            color: kPrimaryColor,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Spacer(),
                      IconCard(),
                      IconCard(),
                      IconCard(),
                      IconCard(),
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.8,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/flower.jpg"),
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        offset: Offset(0, 10),
                        color: kPrimaryColor.withOpacity(0.22),
                        blurRadius: 60,
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
