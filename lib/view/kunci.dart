import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class Kunci extends StatefulWidget {
  @override
  _KunciState createState() => _KunciState();
}

class _KunciState extends State<Kunci> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      // <-- STACK AS THE SCAFFOLD PARENT
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image:
                  AssetImage("assets/background.png"), // <-- BACKGROUND IMAGE
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor:
              Colors.transparent, // <-- SCAFFOLD WITH TRANSPARENT BG
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Kunci Gitar',
              style: TextStyle(),
            ),
            backgroundColor:
                Colors.transparent, // <-- APPBAR WITH TRANSPARENT BG
            elevation: 0, // <-- ELEVATION ZEROED
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 200.0,
                    width: 320.0,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      image: DecorationImage(
                          image: AssetImage("assets/kunci.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
                    child: ButtonKunci(
                      text1: "Kunci A",
                      tap1: () {
                        final player = AudioCache();
                        player.play("kunci_a.mp3");
                      },
                      text2: "Kunci C",
                      tap2: () {
                        final player = AudioCache();
                        player.play("kunci_c.mp3");
                      },
                      text3: "Kunci D",
                      tap3: () {
                        final player = AudioCache();
                        player.play("kunci_d.mp3");
                      },
                      text4: "Kunci G",
                      tap4: () {
                        final player = AudioCache();
                        player.play("kunci_g.mp3");
                      },
                      text5: "Kunci E",
                      tap5: () {
                        final player = AudioCache();
                        player.play("kunci_e.mp3");
                      },
                      text6: "Kunci F",
                      tap6: () {
                        final player = AudioCache();
                        player.play("kunci_f.mp3");
                      },
                      text7: "Kunci B",
                      tap7: () {
                        final player = AudioCache();
                        player.play("kunci_b.mp3");
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

// ignore: must_be_immutable
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
              trailing: Icon(
                Icons.play_circle_filled,
                size: 40,
                color: Colors.red,
              ),
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
              trailing: Icon(
                Icons.play_circle_filled,
                size: 40,
                color: Colors.red,
              ),
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
              trailing: Icon(
                Icons.play_circle_filled,
                size: 40,
                color: Colors.red,
              ),
              title: Text(
                text3,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          onPressed: tap3,
        ),
        SizedBox(height: 10.0),
        FlatButton(
          child: Card(
            elevation: 1,
            child: ListTile(
              trailing: Icon(
                Icons.play_circle_filled,
                size: 40,
                color: Colors.red,
              ),
              title: Text(
                text4,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          onPressed: tap4,
        ),
        SizedBox(height: 10.0),
        FlatButton(
          child: Card(
            elevation: 1,
            child: ListTile(
              trailing: Icon(
                Icons.play_circle_filled,
                size: 40,
                color: Colors.red,
              ),
              title: Text(
                text5,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          onPressed: tap5,
        ),
        SizedBox(height: 10.0),
        FlatButton(
          child: Card(
            elevation: 1,
            child: ListTile(
              trailing: Icon(
                Icons.play_circle_filled,
                size: 40,
                color: Colors.red,
              ),
              title: Text(
                text6,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          onPressed: tap6,
        ),
        SizedBox(height: 10.0),
        FlatButton(
          child: Card(
            elevation: 1,
            child: ListTile(
              trailing: Icon(
                Icons.play_circle_filled,
                size: 40,
                color: Colors.red,
              ),
              title: Text(
                text7,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          onPressed: tap7,
        ),
      ],
    );
  }
}
