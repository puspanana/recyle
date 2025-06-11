import 'package:flutter/material.dart';
import 'package:recyle/theme.dart';

class Lastsesion extends StatelessWidget {
  final String jenisSampah;
  const Lastsesion({super.key, required this.jenisSampah});

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
                Navigator.popUntil(context, (route) => route.isFirst);
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
              child: Padding(
                padding: const EdgeInsets.only(top: 62),
                child: Text(
                  jenisSampah,
                  style: superfont6,
                ),
              )),
          Positioned(
            top: 209,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0XFF0E5A50),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 200, left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Terima kasih telah menyetorkan sampah Anda. Petugas akan menuju lokasi Anda. Mengenai estimasi harga jual, petugas akan melakukan penghitungan ulang.",
                      style: normalfont4,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 365),
                child: Container(
                  height: 5,
                  width: 85,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'images/petugas2.png',
              height: 450,
              width: 300,
            ),
          ),
          Positioned(
            top: 580,
            bottom: 80,
            right: 0,
            left: 0,
            child: Container(
              color: const Color(0XFFFADA17),
              child: Padding(
                padding: const EdgeInsets.only(top: 34, left: 150, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mohon tunggu sebentar Petugas lansung meluncur',
                      style: superfont3,
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: 520,
              left: -50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'images/petugas.png',
                    width: 260,
                    height: 260,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
