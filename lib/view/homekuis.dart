import 'package:flutter/material.dart';
import 'package:myprojectmusic/view/hasil.dart';
import 'package:myprojectmusic/view/kuisbaru.dart';

class HomeKuis extends StatefulWidget {
  @override
  _HomeKuisState createState() => _HomeKuisState();
}

class _HomeKuisState extends State<HomeKuis> {
  var pertanyaanIndex = 0;
  var totalScore = 0;
  void klikjawaban(int score) {
    totalScore += score;
    print('Total Score ');
    print(totalScore);
    setState(() {
      pertanyaanIndex++;
    });
    print(pertanyaanIndex);
    if (pertanyaanIndex < pertanyaan.length) {
      print('Masih ada soal');
    } else {
      print('Soal sudah di jawab semua');
    }
  }

  void _cobaLagi() {
    setState(() {
      pertanyaanIndex = 0;
      totalScore = 0;
    });
  }

  var pertanyaan = [
    {
      'teksPertanyaan': 'Ada berapa senar pada alat music gitar?',
      'teksJawaban': [
        {'teks': '6 Senar', 'score': 10},
        {'teks': '5 Senar', 'score': 0},
        {'teks': '4 Senar', 'score': 0}
      ]
    },
    {
      'teksPertanyaan': 'Nama senar kedua pada gitar disebut?',
      'teksJawaban': [
        {'teks': 'Senar G', 'score': 0},
        {'teks': 'Senar B', 'score': 10},
        {'teks': 'Senar E', 'score': 0}
      ]
    },
    {
      'teksPertanyaan':
          'Sejenis gitar yang menggunakan beberapa pickup untuk mengubah bunyi atau getaran dari string gitar menjadi arus listrik yang akan dikuatkan kembali dengan menggunakan seperangkat amplifier dan loud speaker, disebut gitar?',
      'teksJawaban': [
        {'teks': 'Gitar Akustik', 'score': 0},
        {'teks': 'Gitar Klasik', 'score': 0},
        {'teks': 'Gitar Elektrik', 'score': 10}
      ]
    },
    {
      'teksPertanyaan': 'Nama senar ketiga pada gitar disebut?',
      'teksJawaban': [
        {'teks': 'Senar G', 'score': 10},
        {'teks': 'Senar E', 'score': 0},
        {'teks': 'Senar B', 'score': 0}
      ]
    },
    {
      'teksPertanyaan': 'Gitar elektrik menggunakan jenis senar ? ',
      'teksJawaban': [
        {'teks': 'Nylon', 'score': 0},
        {'teks': 'Steel-String', 'score': 10},
        {'teks': 'Baja', 'score': 0}
      ]
    },
    {
      'teksPertanyaan': 'Nama senar ke enam pada gitar disebut?',
      'teksJawaban': [
        {'teks': 'Senar A', 'score': 0},
        {'teks': 'Senar E', 'score': 10},
        {'teks': 'Senar D', 'score': 0}
      ]
    },
    {
      'teksPertanyaan': 'Gitar Akustik menggunakan jenis senar?',
      'teksJawaban': [
        {'teks': 'Baja', 'score': 0},
        {'teks': 'Steel-String', 'score': 0},
        {'teks': 'Nylon', 'score': 10}
      ]
    },
    {
      'teksPertanyaan': 'Senar D pada gitar berada diurutan?',
      'teksJawaban': [
        {'teks': 'Senar 4', 'score': 10},
        {'teks': 'Senar 5', 'score': 0},
        {'teks': 'Senar 6', 'score': 0}
      ]
    },
    {
      'teksPertanyaan':
          'Jenis gitar ini dapat menggunakan jenis senar nilon atau jenis senar steel-string, pada gitar ini terdapat pickup (perangkat yang berfungsi sebagai transduser yang menangkap getaran mekanik dari dawai dan mengubahnya menjadi sinyal elektrik yang kemudian diteruskan ke penguat suara, disebut gitar ',
      'teksJawaban': [
        {'teks': 'Gitar Klasik', 'score': 0},
        {'teks': 'Gitar Elektrik', 'score': 0},
        {'teks': 'Gitar Akustik', 'score': 10}
      ]
    },
    {
      'teksPertanyaan':
          'Gitar ini memiliki ciri khas pada senarnya yang terbuat dari nilon dan pada umumnya memiliki 19 fret, disebut gitar?',
      'teksJawaban': [
        {'teks': 'Gitar Klasik', 'score': 10},
        {'teks': 'Gitar Elektrik', 'score': 0},
        {'teks': 'Gitar Akustik', 'score': 0}
      ]
    }
  ];

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
              'KUIS TIME!',
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: pertanyaanIndex < pertanyaan.length
              ? Kuis(
                  klikjawaban: klikjawaban,
                  pertanyaan: pertanyaan,
                  pertanyaanIndex: pertanyaanIndex,
                )
              : Hasil(totalScore, _cobaLagi),
        ),
      ],
    );
  }
}
