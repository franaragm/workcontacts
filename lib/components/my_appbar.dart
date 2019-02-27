import 'package:flutter/material.dart';

class MyAppbar extends StatelessWidget {

  String appBarName = "Contacts";

  MyAppbar(this.appBarName);

  @override
  Widget build(BuildContext context) {

    appBarName = appBarName.toUpperCase();

    final bgAppBar = Container(
      height: 86,
      decoration: BoxDecoration(
        color: Colors.lightBlue
      ),
    );

    final textAppBar = Container(
      height: 20,
      padding: EdgeInsets.only(top: 40),
      child: Center(
        child: Text(
          appBarName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w500
          ),
        ),
      ),
    );

    final iconAppBar = Container(
      height: 80,
      padding: EdgeInsets.only(
          top: 40.0,
          left: 20.0
      ),
      child: InkWell(
        onTap: () {
        },
        child: Column(
          children: <Widget>[
            Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        bgAppBar,
        textAppBar,
        iconAppBar
      ],
    );
  }
}