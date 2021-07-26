import 'package:flutter/material.dart';
import 'package:quickieapps/Models/homeA.dart';
import '../Extras/colors.dart';
import 'package:quickieapps/Extras/textField.dart';
import 'signUp.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      // resizeToAvoidBottomInset: false,
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget> [
              Image.asset('assets/logo.png'),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: InputField(
                  hintText: 'Email',
                  labelText: 'Email', width: 0,
                )
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: InputField(
                  hintText: 'Password',
                  labelText: 'Password', width: 0,
                )
              ),
              Text(
                'Forget Password?',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              SizedBox(
                height: 95,
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
                      'Login',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white
                      ),
                    ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextButton(
                 onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                 },
                 child: Text(
                'Dont have account? Create one',
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
