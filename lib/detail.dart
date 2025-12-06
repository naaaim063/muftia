import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:milk_mood/chekout.dart';
import 'package:milk_mood/keranjang.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.transparent),
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
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              child: Container(
                height: 230,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('asset/images/background_appbar.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Positioned(
              top: 180,
              left: MediaQuery.of(context).size.width / 2 - 80,
              child: Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: AssetImage('asset/images/cake_box_oreo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Positioned(
              top: 360,
              left: 20,
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.star, color: Colors.black, size: 24),
                    label: Text(
                      "4.5",
                      style: GoogleFonts.katibeh(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Cake Box Oreo",
                        style: GoogleFonts.katibeh(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "20 k",
                          style: GoogleFonts.katibeh(
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 1),

                  Text(
                    "Cake Box Oreo - dessert lembut berlapis cokelat"
                    " dan oreo yang creamy dan rich di setiap gigitan",
                    style: GoogleFonts.katibeh(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16),

                  Text(
                    "Box Size",
                    style: GoogleFonts.katibeh(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16),

                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0x5D7B8C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Small",
                          style: GoogleFonts.katibeh(
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Medium",
                          style: GoogleFonts.katibeh(
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2D4273),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "+      2      -",
                          style: GoogleFonts.katibeh(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Keranjang(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFD9D9D9),
                          shape: const CircleBorder(),
                          minimumSize: const Size(60, 60),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            'asset/images/cart.png',
                            width: 28,
                            height: 28,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFD9D9D9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Chekout()),
                          );
                        },
                        child: Text(
                          "Buy Now",
                          style: GoogleFonts.katibeh(
                            fontSize: 36,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),

                  Text(
                    "Add to cart",
                    style: GoogleFonts.katibeh(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              top: 17,
              left: 17,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Color(0xFFE1AEAE),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
