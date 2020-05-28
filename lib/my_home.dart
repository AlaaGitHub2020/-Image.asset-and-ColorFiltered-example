import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(
          'Image Asset Color Filtered ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.orangeAccent,
              BlendMode.darken,
            ),
            child: Container(
              width: 200,
              height: 200,
              padding: EdgeInsets.only(
                top: 20,
              ),
              child: Image.asset('images/flutter bird.png'),
            ),
          ),
          Center(
            child: Container(
              width: 200,
              height: 200,
              padding: EdgeInsets.only(
                top: 20.0,
              ),
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.orange,
                  BlendMode.saturation,
                ),
                child: Image.asset('images/flutter.png'),
              ),
            ),
          ),
          Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.only(
              top: 20,
            ),
            child: ColorFiltered(
              child: Image.asset('images/bird.gif'),
              colorFilter: ColorFilter.mode(
                Colors.yellowAccent,
                BlendMode.multiply,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
