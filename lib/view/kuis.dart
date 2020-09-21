import 'package:flutter/material.dart';

class Kuis extends StatefulWidget {
  @override
  _KuisState createState() => _KuisState();
}

class _KuisState extends State<Kuis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kuis"),
      ),
      body: Container(
        child: Text("ini page kuis"),
      ),
    );
  }
}
