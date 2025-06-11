import 'package:flutter/material.dart';
import 'package:recyle/theme.dart';

class Artikel3 extends StatelessWidget {
  const Artikel3({super.key});

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
              'images/gambar3.png',
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
                color: Color(0XFF24B24E),
              ),
            ),
          ),
          Positioned(
            top: 225,
            left: 35,
            child: Text("Pentingnya\nDaur Ulang", style: superfont13),
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
                      '  Sampah plastik memiliki dampak lingkungan yang besar, karena sulit terurai dan bisa bertahan ratusan tahun di alam. Plastik mencemari tanah, air, dan laut, mengancam kehidupan hewan yang dapat terjebak atau menelan plastik. Selain itu, proses pembuatan plastik memerlukan sumber daya alam yang banyak dan menghasilkan polusi udara, yang berdampak pada perubahan iklim.',
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
