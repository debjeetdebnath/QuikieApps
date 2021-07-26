import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quickieapps/Extras/colors.dart';
import 'package:quickieapps/Models/profile.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    late var height = MediaQuery.of(context).size.height;
    // late var width = MediaQuery.of(context).size.width;

    return  Column(
      children:<Widget> [
        Container(
          height: height*0.15,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff181834), const Color(0xff3b3576)
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: <Widget>[
                    InkWell(
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/profile.png'),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                      },
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('L Messi',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text('Points \n'
                        '40',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context){
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Container(
                                  color: kDarkButtonColor,
                                  height: 650,
                                  width: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ShowDialog(points: '100',),
                                        ShowDialog(points: '500',),
                                        ShowDialog(points: '1k',),
                                        ShowDialog(points: '9k',),
                                        ShowDialog(points: '10k',),
                                      ],
                                    ),

                                  ),
                                ),
                              );
                            });
                        },
                      child: CircleAvatar(
                        radius: 35,
                        // backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/circle_logo.png'),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ShowDialog extends StatelessWidget {

  final String points;
  ShowDialog({required this.points});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget> [
            Text('LP',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25
              ),
            ),
            Text( points,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Text('Lorem ipsum dolor sit amet,consectur adipising elit, sed',
          style: TextStyle(
              color: Colors.white,
              fontSize: 15
          ),
        ),
        Divider(
          color: Colors.white,
          indent: 5,
        )
      ],
    );
  }
}
