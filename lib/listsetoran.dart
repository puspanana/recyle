import 'package:flutter/material.dart';
import 'package:recyle/lastsesion.dart';
import 'package:recyle/theme.dart';

class Listsetoran extends StatefulWidget {
  const Listsetoran({super.key});

  @override
  State<Listsetoran> createState() => _ListsetoranState();
}

class _ListsetoranState extends State<Listsetoran> {
  void _showPopup(BuildContext context, String jenis, int hargaPerKg) {
    int berat = 1;
    int totalHarga = hargaPerKg;

    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        builder: (context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 4,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 10),
                        decoration: BoxDecoration(
                          color: const Color(0XFF0E5A50),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(jenis, style: superfont17),
                      ),
                      Text('Rp${hargaPerKg.toString()}/Kg', style: superfont8),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Estimasi',
                    style: superfont4,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Layanan ini menghitung perkiraan harga jual sampah rongsokan per kilogram berdasarkan jenis dan berat sampah, membantu Anda mengetahui potensi penghasilan dari sampah yang dipilih.',
                    style: normalfont1,
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Berat (Kg)',
                        style: superfont3,
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              if (berat > 1) {
                                setState(() {
                                  berat--;
                                  totalHarga = berat * hargaPerKg;
                                });
                              }
                            },
                            icon: const Icon(
                              Icons.indeterminate_check_box,
                              color: Color(0XFF0E5A50),
                            ),
                          ),
                          Text(
                            '$berat',
                            style: superfont3,
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                berat++;
                                totalHarga = berat * hargaPerKg;
                              });
                            },
                            icon: const Icon(
                              Icons.add_box,
                              color: Color(0XFF0E5A50),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Harga Total',
                        style: superfont3,
                      ),
                      Text(
                        'Rp$totalHarga',
                        style: superfont8,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Lastsesion(jenisSampah: jenis),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow[700],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: Text(
                      'Stor Sekarang',
                      style: superfont17,
                    ),
                  ),
                ],
              ),
            );
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 62,
            left: 12,
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
          Positioned(
            top: 62,
            left: 55,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mau Setoran apa', style: superfont4),
                Text('Hari Ini?', style: superfont6),
              ],
            ),
          ),
          Positioned(
            top: 150,
            left: 20,
            right: 20,
            child: SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () => _showPopup(context, "Kaca", 2000),
                    child: Container(
                      width: screenWidth * 0.29,
                      decoration: BoxDecoration(
                        color: const Color(0XFFFADA17),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/kaca.png',
                            width: 80,
                          ),
                          const SizedBox(height: 5),
                          Container(
                            height: 30,
                            width: screenWidth * 0.25,
                            decoration: BoxDecoration(
                              color: const Color(0XFF0E5A50),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                "Kaca",
                                style: superfont9,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () => _showPopup(context, "Logam", 5000),
                    child: Container(
                      width: screenWidth * 0.29,
                      decoration: BoxDecoration(
                        color: const Color(0XFFFADA17),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: screenWidth * 0.29,
                        decoration: BoxDecoration(
                          color: const Color(0XFF0E5A50),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/logam.png',
                              width: 80,
                            ),
                            const SizedBox(height: 5),
                            Container(
                              height: 30,
                              width: screenWidth * 0.25,
                              decoration: BoxDecoration(
                                color: const Color(0XFFFADA17),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Text(
                                  'Logam',
                                  style: superfont2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () => _showPopup(context, "Kertas", 3000),
                    child: Container(
                      width: screenWidth * 0.29,
                      decoration: BoxDecoration(
                        color: const Color(0XFFFADA17),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: screenWidth * 0.29,
                        decoration: BoxDecoration(
                          color: const Color(0XFFFADA17),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/kertas.png',
                              width: 68,
                            ),
                            const SizedBox(height: 5),
                            Container(
                              height: 30,
                              width: screenWidth * 0.25,
                              decoration: BoxDecoration(
                                color: const Color(0XFF0E5A50),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Kertas',
                                  style: superfont9,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () => _showPopup(context, "Elektronik", 10000),
                    child: Container(
                      width: screenWidth * 0.29,
                      decoration: BoxDecoration(
                        color: const Color(0XFFFADA17),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: screenWidth * 0.29,
                        decoration: BoxDecoration(
                          color: const Color(0XFF0E5A50),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/elektronik.png',
                              width: 78,
                            ),
                            const SizedBox(height: 5),
                            Container(
                              height: 30,
                              width: screenWidth * 0.25,
                              decoration: BoxDecoration(
                                color: const Color(0XFFFADA17),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Elektronik',
                                  style: superfont2,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () => _showPopup(context, "Plastik", 5000),
                    child: Container(
                      width: screenWidth * 0.29,
                      decoration: BoxDecoration(
                        color: const Color(0XFFFADA17),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: screenWidth * 0.29,
                        decoration: BoxDecoration(
                          color: const Color(0XFFFADA17),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/plastik.png',
                              width: 80,
                            ),
                            const SizedBox(height: 5),
                            Container(
                              height: 30,
                              width: screenWidth * 0.25,
                              decoration: BoxDecoration(
                                color: const Color(0XFF0E5A50),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Plastik',
                                  style: superfont9,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
