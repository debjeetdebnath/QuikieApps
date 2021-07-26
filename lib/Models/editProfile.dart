import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quickieapps/Extras/bottomBar.dart';
import 'package:quickieapps/Extras/colors.dart';
import 'package:quickieapps/Extras/textField.dart';
import 'package:quickieapps/Models/profile.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
                CupertinoIcons.clear
            )
        ),
      elevation: 0,
      backgroundColor: kBackgroundColor,
      title: Text('EDIT PROFILE'),
      actions:<Widget> [
        Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Row(
              children:<Widget>[
               IconButton(
                   onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                   },
                   icon: Icon(
                     CupertinoIcons.check_mark
                   )
               )
              ]
          ),
        ),
      ],
    ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget> [
                CircleAvatar(
                    radius: 75,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 74.8,
                      backgroundColor: kBackgroundColor,
                      child:CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage('assets/profile.png'),
                      ),
                    )
                ),
                InputField(
                  labelText: 'FIRST NAME', hintText: 'FIRST NAME', width: 0,),
                SizedBox(
                  height: 25,
                ),
                InputField(
                  labelText: 'LAST NAME', hintText: 'LAST NAME', width: 0,),
                SizedBox(
                  height: 25,
                ),
                InputField(
                  labelText: 'USERNAME', hintText: 'USERNAME', width: 0,),
                SizedBox(
                  height: 25,
                ),
                InputField(
                  labelText: 'EMAIL ID', hintText: 'EMAIL ID', width: 0,),
                SizedBox(
                  height: 25,
                ),
                InputField(
                  labelText: 'PHONE NUMBER', hintText: 'PHONE NUMBER', width: 0,),
                SizedBox(
                  height: 25,
                ),
                InputField(
                  labelText: 'ADDRESS', hintText: 'ADDRESS', width: 0,),
                SizedBox(
                  height: 60,
                ),
                    BottomBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
