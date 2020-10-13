import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:myprojectmusic/view/kodaline.dart';
import 'package:myprojectmusic/view/koesplus.dart';
import 'package:myprojectmusic/view/peterpen.dart';

class Lagu extends StatefulWidget {
  @override
  _LaguState createState() => _LaguState();
}

class _LaguState extends State<Lagu> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Lagu dan Chord',
              style: TextStyle(),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
                    child: ButtonKunci(
                      text1: "Yang Terdalam - Peterpen",
                      tap1: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Peterpen()));
                      },
                      text2: "All I Want - Kodaline",
                      tap2: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Kodaline()));
                      },
                      text3: "Andai Kau Datang - Koes Plus",
                      tap3: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Koesplus()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ButtonKunci extends StatelessWidget {
  String text1, text2, text3, text4, text5, text6, text7;
  GestureTapCallback tap1, tap2, tap3, tap4, tap5, tap6, tap7;

  ButtonKunci(
      {this.tap1,
      this.tap2,
      this.tap3,
      this.tap4,
      this.tap5,
      this.tap6,
      this.tap7,
      this.text1,
      this.text2,
      this.text3,
      this.text4,
      this.text5,
      this.text6,
      this.text7});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlatButton(
          child: Card(
            elevation: 1,
            child: ListTile(
              title: Text(
                text1,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          onPressed: tap1,
        ),
        SizedBox(height: 10.0),
        FlatButton(
          child: Card(
            elevation: 1,
            child: ListTile(
              title: Text(
                text2,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          onPressed: tap2,
        ),
        SizedBox(height: 10.0),
        FlatButton(
          child: Card(
            elevation: 1,
            child: ListTile(
              title: Text(
                text3,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          onPressed: tap3,
        ),
      ],
    );
  }
}
