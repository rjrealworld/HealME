import 'package:flutter/material.dart';
import 'package:healme/constants.dart';
import 'package:healme/shared/custom_cards.dart';

import '../../chumma.dart';

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: new AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MyHome(
                        index: 3,
                      );
                    },
                  ),
                );
            },
          )
        ],
        backgroundColor: Color(0XFF0047b3),
        title: new Text(
          "HealME",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'S',
          ),
        ),
      ),
      backgroundColor: kwhite,
          body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MyHome(
                          index: 0,
                        );
                      },
                    ),
                  );
                },
                child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width -
                        MediaQuery.of(context).size.width * 0.25,
                    child: customCard(
                        "", ".", Icons.access_alarm, "assets/images/Healthy")),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MyHome(
                          index: 1,
                        );
                      },
                    ),
                  );
                },
                child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width -
                        MediaQuery.of(context).size.width * 0.25,
                    child: customCard(
                        "", ".", Icons.access_alarm, "assets/images/Meditation")),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MyHome(
                          index: 2,
                        );
                      },
                    ),
                  );
                },
                child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width -
                        MediaQuery.of(context).size.width * 0.25,
                    child: customCard(
                        "", ".", Icons.access_alarm, "assets/images/music")),
              ),
            ],
          ),
        ],
      ),
    );
  }
}