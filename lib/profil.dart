import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [Color.fromARGB(255, 4, 111, 205), Color(0xFFFFFFFF)],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 40),

                Row(
                  children: [
                    // Foto profil
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("asset/images/user.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Najma Qodryan",
                          style: GoogleFonts.kavoon(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 0.5),
                        Text(
                          "najma23@gmail.com",
                          style: GoogleFonts.kavoon(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFFFFF),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: Text(
                    "Edit",
                    style: GoogleFonts.manuale(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),

                const SizedBox(height: 40),

                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 8,
                      ),
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.white)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.language, color: Colors.black),
                              SizedBox(width: 10),
                              Text(
                                "Bahasa",
                                style: GoogleFonts.manuale(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 12,
                          ),
                        ],
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 8,
                      ),
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.white)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.groups_3, color: Colors.black),
                              SizedBox(width: 10),
                              Text(
                                "Keamanan akun",
                                style: GoogleFonts.manuale(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 10,
                          ),
                        ],
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 8,
                      ),
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.white)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.privacy_tip, color: Colors.black),
                              SizedBox(width: 10),
                              Text(
                                "Kebijakan Privasi",
                                style: GoogleFonts.manuale(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 10,
                          ),
                        ],
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 8,
                      ),
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.white)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.help, color: Colors.black),
                              SizedBox(width: 10),
                              Text(
                                "Bantuan & laporan",
                                style: GoogleFonts.manuale(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
