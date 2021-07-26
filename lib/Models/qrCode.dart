import 'package:flutter/material.dart';
import 'package:quickieapps/Extras/bottomBar.dart';
import 'package:quickieapps/Extras/colors.dart';
import 'package:quickieapps/Extras/appBar.dart';

class QrCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Appbar(),
            Padding(
              padding: const EdgeInsets.only(left: 16,top: 16),
              child: Text(
                'DIGITAL MEMBER CARD',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ),
              ),
            ),
            Image.asset('assets/qr_code.png'),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
