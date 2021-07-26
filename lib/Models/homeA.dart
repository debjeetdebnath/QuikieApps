import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quickieapps/Extras/appBar.dart';
import 'package:quickieapps/Extras/bottomBar.dart';
import 'package:quickieapps/Extras/colors.dart';

class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
    body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Appbar(),
          Padding(
            padding: const EdgeInsets.only(left: 16,top: 16),
            child: Text(
              'NEWS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),
            ),
          ),
          Swipe(),
          BottomBar(),
        ],
      ),
    ),
    );
  }
}

class Swipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 500,
        width: 500,
        child: ListView(
          scrollDirection: Axis.horizontal, // <-- Like so
          children: <Widget>[
            Container(
              width: 425,
              color: kBackgroundColor,
              child: Image.asset('assets/1.png'),
            ),
            Container(
              width: 425.0,
              color: kBackgroundColor,
              child: Image.asset('assets/2.png'),
            ),
            Container(
              width: 425,
              color: kBackgroundColor,
              child: Image.asset('assets/3.png'),
            ),
          ],
        ),
      ),
    );
  }
}



