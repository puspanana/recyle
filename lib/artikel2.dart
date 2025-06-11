import 'package:flutter/material.dart';
import 'package:recyle/theme.dart';

class Artikel2 extends StatelessWidget {
  const Artikel2({super.key});

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
              'images/gambar2.png',
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
                color: Color(0XFFF8F4D9),
              ),
            ),
          ),
          Positioned(
            top: 225,
            left: 35,
            child: Text("Pentingnya\nDaur Ulang", style: superfont6),
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
              child: Padding(
                padding: const EdgeInsets.only(top: 80, left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Daur ulang membantu mengurangi jumlah sampah yang berakhir di tempat pembuangan akhir (TPA), menghemat sumber daya alam, dan mengurangi polusi lingkungan. Dengan mendaur ulang, bahan-bahan seperti plastik, kertas, dan logam bisa digunakan kembali, mengurangi kebutuhan akan produksi baru yang dapat merusak lingkungan. Daur ulang juga mendukung ekonomi sirkular dengan menciptakan peluang pekerjaan dan mengurangi jejak karbon.',
                      style: normalfont4,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
