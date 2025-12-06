import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:milk_mood/selesai.dart';

class Chekout extends StatelessWidget {
  const Chekout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4B86A9),
      body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                child: Container(
                  height: 110,
                  width: double.infinity,
                  child: Image.asset(
                    "asset/images/appbar_small.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      color: Color(0xFFE1AEAE),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 18,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 12,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.close, color: Colors.black, size: 20),
                ),
              ),
              Positioned(
                top: 48,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFD9D9D9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 24,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Chekout",
                        style: GoogleFonts.katibeh(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "asset/images/cake_box_oreo.png",
                                width: 36,
                                height: 36,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Americano",
                                    style: GoogleFonts.katibeh(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "Rp 20.000",
                                    style: GoogleFonts.katibeh(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: 4,
                          right: 4,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: const Color.fromARGB(
                                255,
                                5,
                                47,
                                82,
                              ),
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "+   2   1",
                              style: GoogleFonts.katibeh(fontSize: 13),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "asset/images/black_coffe.png",
                                width: 36,
                                height: 36,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Americcano",
                                    style: GoogleFonts.katibeh(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "hot",
                                    style: GoogleFonts.katibeh(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "Rp 25.000",
                                    style: GoogleFonts.katibeh(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: 4,
                          right: 4,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: const Color.fromARGB(
                                255,
                                5,
                                47,
                                82,
                              ),
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "+   1   1",
                              style: GoogleFonts.katibeh(fontSize: 13),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 18),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Pilihan Pembayaran",
                              style: GoogleFonts.katibeh(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Debit - BCA",
                              style: GoogleFonts.katibeh(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Divider(color: Colors.white),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Pesanan (2 menu)",
                              style: GoogleFonts.katibeh(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Rp.58.000",
                              style: GoogleFonts.katibeh(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Biaya layanan",
                              style: GoogleFonts.katibeh(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Rp.2.000",
                              style: GoogleFonts.katibeh(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Voucher cafe",
                              style: GoogleFonts.katibeh(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "-Rp.5000",
                              style: GoogleFonts.katibeh(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Divider(color: Colors.white),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total",
                              style: GoogleFonts.katibeh(
                                fontSize: 28,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Rp 55.000",
                              style: GoogleFonts.katibeh(
                                fontSize: 28,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 22,
                              vertical: 8,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Selesai(),
                              ),
                            );
                          },
                          child: Text(
                            "Bayar",
                            style: GoogleFonts.katibeh(
                              fontSize: 26,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
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
