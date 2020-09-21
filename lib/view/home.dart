import 'package:flutter/material.dart';
import 'package:myprojectmusic/view/pengenalan.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jago Musik"),
      ),
      body: Container(
        color: Colors.black,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pengenalan()));
              },
              child: Container(
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  image: DecorationImage(
                      image: AssetImage("assets/menu1.png"), fit: BoxFit.cover),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  image: DecorationImage(
                      image: AssetImage("assets/menu2.png"), fit: BoxFit.cover),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  image: DecorationImage(
                      image: AssetImage("assets/menu3.png"), fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
