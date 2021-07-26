import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quickieapps/Extras/colors.dart';
import 'package:quickieapps/Models/homeA.dart';
import 'package:quickieapps/Models/qrCode.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: kBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          IconButton(
            icon:Icon(Icons.border_clear_outlined,
            size: 30,
            ),
            color: Colors.pink,
             onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage1()));
             },
          ),
          IconButton(
            icon:Icon(Icons.border_outer_outlined,
              size: 30,
            ),
            color: Colors.white,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => QrCode()));
            },
          ),
          IconButton(
            icon:Icon(CupertinoIcons.home,
              size: 30,
            ),
            color: Colors.white,
            onPressed: () { },
          ),
          IconButton(
            icon:Icon(CupertinoIcons.cart,
              size: 30,
            ),
            color: Colors.white,
            onPressed: () { },
          ),
        ],
      ),
    );
  }
}
