import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  final Function pilihJawaban;
  final String teksJawab;
  Jawaban(this.pilihJawaban, this.teksJawab);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50.0, right: 50.0),
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.green,
        child: Text(
          teksJawab,
          style: TextStyle(fontSize: 18.0),
        ),
        onPressed: pilihJawaban,
      ),
    );
  }
}
