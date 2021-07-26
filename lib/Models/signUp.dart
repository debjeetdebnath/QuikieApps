import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quickieapps/Models/loginScreen.dart';
import 'package:quickieapps/Models/verification.dart';
import '../Extras/colors.dart';
import '../Extras/textField.dart';
import 'package:quickieapps/Extras/circleBox.dart';


class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
            Text(
              'Profile Picture',
              style: TextStyle(
                color: Colors.white
              ),
            ),
              SizedBox(
                height: 10,
              ),
              Circle(
                outRadius: 65,
                inRadius: 64.5,
                icon: Icons.camera_alt_outlined,
              ),
              SizedBox(
                height: 15,
              ),
              Text('Gender',
                style: TextStyle(
                    color: Colors.white
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget> [
                  Circle(
                    outRadius: 45,
                    inRadius: 44.5,
                    icon: Icons.male,
                  ),
                  Circle(
                    outRadius: 45,
                    inRadius: 44.5,
                    icon: Icons.female,
                  ),
                  Circle(
                    outRadius: 45,
                    inRadius: 44.5,
                    icon: CupertinoIcons.arrow_up_right,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'Male',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  Text(
                    'Female',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),Text(
                    'Others',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: InputField(labelText: 'UserName', hintText: 'UserName', width: 0,),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: InputField(labelText: 'Email', hintText: 'Email', width: 0,),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: InputField(labelText: 'Password', hintText: 'Password', width: 0,),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: InputField(labelText: 'Confirm Password', hintText: 'Confirm Password', width: 0,),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Verification()));
                  },
                  child: Text(
                    'Create Account',
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



