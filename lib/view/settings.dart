import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
            title: Text(""),

            backgroundColor:
                Colors.transparent, // <-- APPBAR WITH TRANSPARENT BG
            elevation: 0, // <-- ELEVATION ZEROED
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: FlatButton(
                    child: Card(
                      elevation: 1,
                      child: ListTile(
                        trailing: Icon(
                          Icons.play_circle_filled,
                          size: 40,
                          color: Colors.red,
                        ),
                        title: Text(
                          "Play Backsound",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ),
                    onPressed: () {
                      final player = AudioCache();
                      player.play("backsound.mp3");
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
