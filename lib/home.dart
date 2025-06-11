import 'package:flutter/material.dart';
import 'package:recyle/artikel1.dart';
import 'package:recyle/artikel2.dart';
import 'package:recyle/artikel3.dart';
import 'package:recyle/listsetoran.dart';
import 'package:recyle/theme.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 62, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hai Dena,',
                        style: normalfont3,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Welcome Back !',
                        style: superfont15,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Icon(
                            Icons.delete,
                            size: 25,
                            color: Color(0XFF0E5A50),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'Sudah Buang Sampah\nHari Ini ?',
                            style: superfont14,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'images/recyle.png',
                        width: 83,
                        height: 83,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'ReCyle',
                        style: superfont16,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Bin it Right!',
                  style: superfont15,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(20),
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                  color: const Color(0XFFFADA17),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ayo Pilah Sampahmu!',
                            style: superfont2,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Jangan sampai salah, gini caranya',
                            style: normalfont1,
                          ),
                          const SizedBox(height: 15),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => (const Artikel1())));
                            },
                            child: Container(
                              height: 30,
                              width: screenWidth * 0.3,
                              decoration: BoxDecoration(
                                color: const Color(0XFF0E5A50),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Text(
                                  "Let's go",
                                  style: superfont10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 2),
                    Image.asset(
                      'images/gambar1.png',
                      width: 167,
                      height: 112,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(20),
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                  color: const Color(0XFFF8F4D9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Image.asset(
                        'images/gambar2.png',
                        width: 167,
                        height: 112,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Pentingnya Daur Ulang',
                            style: superfont2,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Manfaat yang akan kamu dapatkan',
                            style: normalfont1,
                          ),
                          const SizedBox(height: 15),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          (const Artikel2())));
                            },
                            child: Container(
                              height: 30,
                              width: screenWidth * 0.3,
                              decoration: BoxDecoration(
                                color: const Color(0XFF0E5A50),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Text(
                                  "Let's go",
                                  style: superfont10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(20),
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                  color: const Color(0XFF24B24E),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dampak Negatif Sampah Plastik',
                            style: superfont9,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Siapa yang rugi dari\ndampak negatif ini?',
                            style: normalfont5,
                          ),
                          const SizedBox(height: 15),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          (const Artikel3())));
                            },
                            child: Container(
                              height: 30,
                              width: screenWidth * 0.3,
                              decoration: BoxDecoration(
                                color: const Color(0XFF0E5A50),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Text(
                                  "Let's go",
                                  style: superfont10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 2),
                    Image.asset(
                      'images/gambar3.png',
                      width: 167,
                      height: 112,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'images/petugas.png',
                          width: 150,
                          height: 150,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            width: screenWidth * 0.8,
                            decoration: BoxDecoration(
                              color: const Color(0XFF0E5A50),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              'Ayo, Pilih Setoran\nSampahmu',
                              style: superfont9,
                            ),
                          ),
                          const SizedBox(height: 15),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Listsetoran()));
                            },
                            child: Container(
                              height: 30,
                              width: screenWidth * 0.3,
                              decoration: BoxDecoration(
                                color: const Color(0XFFFADA17),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Text(
                                  "Start",
                                  style: superfont2,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
