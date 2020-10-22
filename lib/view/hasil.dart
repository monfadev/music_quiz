import 'package:flutter/material.dart';
import 'package:myprojectmusic/view/home.dart';

class Hasil extends StatelessWidget {
  final int totalScore;
  final Function cobaLagi;
  Hasil(this.totalScore, this.cobaLagi);

  String get hasilScore {
    var hasilteks;
    if (totalScore == 100) {
      hasilteks = 'Nilai 100';
    } else if (totalScore == 90) {
      hasilteks = 'Nilai 90';
    } else if (totalScore == 80) {
      hasilteks = 'Nilai 80';
    } else if (totalScore == 70) {
      hasilteks = 'Nilai 70';
    } else if (totalScore == 60) {
      hasilteks = 'Nilai 60';
    } else if (totalScore == 50) {
      hasilteks = 'Nilai 50';
    } else if (totalScore == 40) {
      hasilteks = 'Nilai 40';
    } else if (totalScore == 30) {
      hasilteks = 'Nilai 30';
    } else if (totalScore == 20) {
      hasilteks = 'Nilai 20';
    } else if (totalScore == 10) {
      hasilteks = 'Nilai 10';
    } else {
      hasilteks = 'Nilai 0 \n Ayo Belajar lagi';
    }
    return hasilteks;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Center(
            child: Text(
              'Anda Mendapat nilaii' + hasilScore,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        FlatButton(
          child: Text(
            'Try Again!',
            style: TextStyle(fontSize: 18.0),
          ),
          textColor: Colors.green,
          onPressed: cobaLagi,
        ),
        FlatButton(
          child: Text(
            'Back To Home',
            style: TextStyle(fontSize: 18.0),
          ),
          textColor: Colors.green,
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
        ),
      ],
    );
  }
}
