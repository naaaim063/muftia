import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:milk_mood/beranda.dart';

class Selesai extends StatelessWidget {
  const Selesai({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4B86A9),
      body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  child: Image.asset(
                    "asset/images/appbar_small.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 6,
                left: 6,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color(0xFFE1AEAE),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),

          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.check_circle,
                      color: Color(0xFF4B86A9),
                      size: 120,
                    ),
                  ),

                  SizedBox(height: 3),

                  Text(
                    'Succes',
                    style: GoogleFonts.katibeh(
                      color: Colors.white,
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 30),

                  SizedBox(
                    width: 180,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Beranda()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          238,
                          235,
                          235,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Back to home',
                        style: GoogleFonts.katibeh(
                          color: Colors.black,
                          fontSize: 28,
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
