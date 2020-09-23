import 'package:flutter/material.dart';
import 'package:myprojectmusic/view/home.dart';

class Kuis extends StatefulWidget {
  @override
  _KuisState createState() => _KuisState();
}

class _KuisState extends State<Kuis> {
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
                    height: 180.0,
                    width: 340.0,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      image: DecorationImage(
                          image: AssetImage("assets/gitarelektrik.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: 350.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Center(
                      child: Text("Ini adalah gitar?"),
                    ),
                  ),
                  SizedBox(height: 80),
                  GestureDetector(
                    onTap: () {
                      print('asd');
                    },
                    child: Container(
                      height: 50.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: Center(
                        child: Text("Elektrik"),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  GestureDetector(
                    onTap: () {
                      print('2');
                    },
                    child: Container(
                      height: 50.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: Center(
                        child: Text("String"),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  GestureDetector(
                    onTap: () {
                      print('3');
                    },
                    child: Container(
                      height: 50.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: Center(
                        child: Text("String"),
                      ),
                    ),
                  ),
                  SizedBox(height: 80),
                  RaisedButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Text("Back to Home"),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
