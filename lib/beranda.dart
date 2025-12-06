import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:milk_mood/coffe.dart';
import 'package:milk_mood/dessert.dart';
import 'package:milk_mood/milk_based.dart';
import 'profil.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF286486),

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(202),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
          child: AppBar(
            elevation: 0,
            flexibleSpace: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  "asset/images/background_appbar.png",
                  fit: BoxFit.cover,
                ),
                Container(color: Colors.white.withOpacity(0.6)),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.drag_handle,
                              color: Color(0xFF6D2121),
                              size: 28,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Profil(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 3),
                      Text(
                        "Wellcome!!",
                        style: GoogleFonts.kavoon(
                          color: const Color.fromARGB(255, 5, 103, 184),
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Milk & Mood",
                        style: GoogleFonts.kavoon(
                          color: const Color(0xFF686262),
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Coffe()),
                  );
                },
                child: Container(
                  height: 165,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFE8F1F5),
                        Color(0xFF9DB8C6),
                        Color(0xFF65889B),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(35),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: const Offset(0, 4),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "asset/images/coffe.png",
                            width: 110,
                            height: 110,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "COFFE",
                        style: GoogleFonts.katibeh(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 16),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MilkBased()),
                  );
                },
                child: Container(
                  height: 165,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFE8F1F5),
                        Color(0xFF9DB8C6),
                        Color(0xFF65889B),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(35),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: const Offset(0, 4),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "asset/images/milk_based.png",
                            width: 110,
                            height: 110,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "MILK BASED",
                        style: GoogleFonts.katibeh(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 16),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Dessert()),
                  );
                },
                child: Container(
                  height: 165,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFE8F1F5),
                        Color(0xFF9DB8C6),
                        Color(0xFF65889B),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(35),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: const Offset(0, 4),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "asset/images/dessert.png",
                            width: 110,
                            height: 110,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "DESSERT",
                        style: GoogleFonts.katibeh(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
