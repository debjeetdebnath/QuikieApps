import 'package:flutter/material.dart';
import 'package:quickieapps/Extras/colors.dart';

class Circle extends StatelessWidget {
  final double outRadius;
  final double inRadius;
  final icon;

  Circle({required this.outRadius,required this.inRadius, this.icon});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: outRadius,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: inRadius,
          backgroundColor: kBackgroundColor,
          child: Icon(
              icon
          ),
        )
    );
  }
}