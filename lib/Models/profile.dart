import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quickieapps/Extras/bottomBar.dart';
import 'package:quickieapps/Extras/colors.dart';
import 'package:quickieapps/Models/editProfile.dart';
import 'package:quickieapps/Models/loginScreen.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
                CupertinoIcons.back
            )
        ),
        title: Text('Profile'),
        actions:<Widget> [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Row(
              children:<Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text('LOG OUT',
                  style: TextStyle(
                    color: Colors.white
                  ),),
                )
        ]
            ),
          ),
        ],
      ),
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('L Messi',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                IconButton(
                  icon:Icon(CupertinoIcons.pen,
                    size: 30,
                  ),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(height: 145,
                  width: 145,
                  child: Image.asset('assets/circle_logo.png',
                    fit: BoxFit.fill,
                    ),
                ),
                CircleAvatar(
                    radius: 75,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 74.8,
                      backgroundColor: kBackgroundColor,
                      child:CircleAvatar(
                        child: Text(
                          '40',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30
                          ),
                        ),
                        radius: 60,
                        backgroundColor: kDarkButtonColor,
                      ),
                    )
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget> [
                Text(
                  'LEVEL',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                ),
                Text(
                  'POINTS',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                    radius: 75,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 74.8,
                      backgroundColor: kBackgroundColor,
                      child:CircleAvatar(
                        child: Text(
                          '40',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30
                          ),
                        ),
                        radius: 60,
                        backgroundColor: kDarkButtonColor,
                      ),
                    )
                ),
                CircleAvatar(
                    radius: 75,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 74.8,
                      backgroundColor: kBackgroundColor,
                      child:CircleAvatar(
                        child: Text(
                          '40',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30
                          ),
                        ),
                        radius: 60,
                        backgroundColor: kDarkButtonColor,
                      ),
                    )
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget> [
                Text(
                  'MONTHLY \n RANKING',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                ),
                Text(
                  'YEARLY \n RANKING',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                ),
              ],
            ),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
