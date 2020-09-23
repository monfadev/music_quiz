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
      'teksPertanyaan': 'Gambar berikut merupakan kunci?',
      'image': 'assets/gitarelektrik.png',
      'teksJawaban': [
        {'teks': 'Kunci C', 'score': 10},
        {'teks': 'Kunci D', 'score': 0},
        {'teks': 'Kunci A', 'score': 0}
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
      'teksPertanyaan': 'Apa nama bagian pada gambar berikut?',
      'teksJawaban': [
        {'teks': 'Fret', 'score': 0},
        {'teks': 'Body', 'score': 0},
        {'teks': 'Tuning Pegs', 'score': 10}
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
      'teksPertanyaan': 'Gitar diatas merupakan tipe gitar?',
      'teksJawaban': [
        {'teks': 'Gitar Akustik', 'score': 0},
        {'teks': 'Gitar Elektrik', 'score': 10},
        {'teks': 'Gitar Akustik', 'score': 0}
      ]
    },
    {
      'teksPertanyaan': 'Gambar berikut merupakan kunci?',
      'teksJawaban': [
        {'teks': 'Senar C', 'score': 0},
        {'teks': 'Senar A', 'score': 0},
        {'teks': 'Senar D', 'score': 10}
      ]
    },
    {
      'teksPertanyaan': 'Gitar diatas merupakan tipe gitar?',
      'teksJawaban': [
        {'teks': 'Gitar Klasik', 'score': 10},
        {'teks': 'Gitar Elektik', 'score': 0},
        {'teks': 'Gitar Akustik', 'score': 0}
      ]
    },
    {
      'teksPertanyaan': 'Gambar berikut merupakan kunci?',
      'teksJawaban': [
        {'teks': 'Senar D', 'score': 0},
        {'teks': 'Senar A', 'score': 10},
        {'teks': 'Senar C', 'score': 0}
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
