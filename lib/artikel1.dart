import 'package:flutter/material.dart';
import 'package:recyle/theme.dart';

class Artikel1 extends StatelessWidget {
  const Artikel1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 62,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.chevron_left,
                color: primary,
                size: 35,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'images/gambar1.png',
              height: 280,
              width: 250,
            ),
          ),
          Positioned(
            top: 209,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
                color: Color(0XFFFADA17),
              ),
            ),
          ),
          Positioned(
            top: 225,
            left: 35,
            child: Text("Ayo Pilah\nSampahmu!", style: superfont6),
          ),
          Positioned(
            top: 300,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
                color: Color(0XFF0E5A50),
              ),
            ),
          ),
          Positioned(
            top: 360,
            left: 20,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                '1. Pilah Berdasarkan Jenis Sampah\n'
                '2. Bersihkan Sampah Daur Ulang\n'
                '3. Gunakan Tempat Sampah Terpisah\n'
                '4. Manfaatkan Sampah Organik untuk\n    kompos\n'
                '5. Tempatkan Sampah yang Siap Daur\n    Ulang di Lokasi Penampungan\n',
                style: normalfont4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
