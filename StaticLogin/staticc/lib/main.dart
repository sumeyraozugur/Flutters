import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink[100],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Colors.pink,
                  backgroundImage: AssetImage('assets/images/reco.jpg'),
                ),
                Text(
                  'Cook Recognize',
                  style: TextStyle(
                    fontFamily: 'Cookie',
                    fontSize: 40,
                    color: Colors.pink[400],
                  ),
                ),
                Text('Bir adım uzağınızda',
                    style: TextStyle(
                      fontFamily: 'Cookie',
                      fontSize: 18,
                      color: Colors.black,
                    )),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  padding: EdgeInsets.all(15),
                  color: Colors.white30,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'sumeyra@gmail.com',
                        style: TextStyle(color: Colors.black26, fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  padding: EdgeInsets.all(15),
                  color: Colors.white30,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '05556203478',
                        style: TextStyle(color: Colors.black26, fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
