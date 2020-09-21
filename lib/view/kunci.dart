import 'package:flutter/material.dart';

class Kunci extends StatefulWidget {
  @override
  _KunciState createState() => _KunciState();
}

class _KunciState extends State<Kunci> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kunci-Kunci Gitar"),
      ),
      body: Container(
        child: Text("ini page kunci"),
      ),
    );
  }
}
