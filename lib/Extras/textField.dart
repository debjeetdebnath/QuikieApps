import 'package:flutter/material.dart';
import 'colors.dart';

class InputField extends StatelessWidget {
  final  labelText;
  final  hintText;
  double  width;

    InputField({ required this.labelText, required this.hintText,required this.width,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(width),
      child: TextField(
        style: TextStyle(
            color: Colors.white
        ),
        decoration: InputDecoration(
            focusColor: Colors.white,
            fillColor: kBackgroundColor,
            filled: false,
            labelText: labelText,
            labelStyle: TextStyle(
                color: Colors.white
            ),
            hintText: hintText,
            hintStyle: TextStyle(
                color: Colors.white
            ),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.white,

                )
            )
        ),
      ),
    );
  }
}

