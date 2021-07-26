import 'package:flutter/material.dart';
import 'package:quickieapps/Extras/colors.dart';
import 'package:quickieapps/Models/homeA.dart';
import 'package:quickieapps/Models/loginScreen.dart';

class Verification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16,right: 16),
          child: Column(
            children:<Widget> [
              Image.asset('assets/logo.png'),
              Row(
                children:<Widget> [
                  Icon(Icons.arrow_back,
                  color: Colors.white,
                    size: 35,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text('Verification',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white
                  ),
                  )
                ],
              ),
              SizedBox(height: 25,),
              Text('We have send a verification code to your email ID',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Text('- - - - ',style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.w100,
                  color: Colors.white
              ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Didnt get a code? Tap to read',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 65,
                width: 375,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage1()));
                  },
                  child: Text(
                    'Verify',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text(
                  'Have an account Login',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
