import 'package:flutter/material.dart';

class Pertanyaan extends StatelessWidget {
  final String textPertanyaan;

  Pertanyaan(this.textPertanyaan);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Container(
            //   height: 180.0,
            //   width: 340.0,
            //   decoration: BoxDecoration(
            //     color: Colors.transparent,
            //     borderRadius: BorderRadius.all(Radius.circular(30.0)),
            //   ),
            // ),
            SizedBox(height: 20.0),
            Container(
              height: 250.0,
              width: 400.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Container(
                padding: EdgeInsets.all(15.0),
                child: Center(
                  child: Text(
                    textPertanyaan,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}
