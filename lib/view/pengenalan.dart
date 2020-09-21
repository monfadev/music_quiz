import 'package:flutter/material.dart';

class Pengenalan extends StatefulWidget {
  @override
  _PengenalanState createState() => _PengenalanState();
}

class _PengenalanState extends State<Pengenalan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengenalan Alat Musik Gitar"),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.black,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Pengenalan()));
                  },
                  child: Container(
                    height: 300.0,
                    width: 400.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      image: DecorationImage(
                          image: AssetImage("assets/pengenalan1.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 300.0,
                    width: 400.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      image: DecorationImage(
                          image: AssetImage("assets/pengenalan2.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 300.0,
                    width: 400.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      image: DecorationImage(
                          image: AssetImage("assets/pengenalan3.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
