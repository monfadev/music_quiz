import 'package:flutter/material.dart';

import 'package:myprojectmusic/view/jawaban.dart';
import 'package:myprojectmusic/view/pertanyaan.dart';

class Kuis extends StatelessWidget {
  final List<Map<String, Object>> pertanyaan;
  final int pertanyaanIndex;
  final Function klikjawaban;

  Kuis(
      {@required this.pertanyaan,
      @required this.pertanyaanIndex,
      @required this.klikjawaban});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Pertanyaan(pertanyaan[pertanyaanIndex]['teksPertanyaan']),
        ...(pertanyaan[pertanyaanIndex]['teksJawaban']
                as List<Map<String, Object>>)
            .map((teksJawaban) {
          return Jawaban(
              () => klikjawaban(teksJawaban['score']), teksJawaban['teks']);
        }).toList()
      ],
    );
  }
}
