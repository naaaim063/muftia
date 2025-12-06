import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:milk_mood/dessert.dart';
import 'package:milk_mood/coffe.dart';
import 'package:milk_mood/profil.dart';
import 'package:milk_mood/search_overlay.dart';

class MilkBased extends StatelessWidget {
  const MilkBased({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF286486),

      appBar: AppBar(
        backgroundColor: const Color(0xFF286486),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.drag_handle, color: Color(0xFF6D2121), size: 28),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Profil()),
            );
          },
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF286486),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Hello Bestie!!",
                          style: GoogleFonts.kavoon(
                            color: const Color(0xFFFFFFFF),
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => const SearchOverlay(),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFFFFFF),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.search, color: Colors.black, size: 42),
                              SizedBox(width: 12),
                              Text(
                                "Search for dessert",
                                style: GoogleFonts.katibeh(
                                  color: const Color.fromARGB(255, 45, 44, 44),
                                  fontSize: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Coffe(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          "Coffe",
                          style: GoogleFonts.katibeh(
                            color: Colors.black,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF59454591),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          "Milk Based",
                          style: GoogleFonts.katibeh(
                            color: Colors.black,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Dessert(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          "Dessert",
                          style: GoogleFonts.katibeh(
                            color: Colors.black,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                ],
              ),
            ),

            SizedBox(
              height: 360,
              child: PageView.builder(
                controller: PageController(viewportFraction: 0.72),
                itemCount: 3,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return _buildCarouselItem(
                      imagePath: "asset/images/matcha_latte.png",
                      title: "Matcha Latte",
                      subtitle: "With topping cream",
                      rating: "4.5",
                    );
                  } else if (index == 1) {
                    return _buildCarouselItem(
                      imagePath: "asset/images/taro_lavender.png",
                      title: "Taro Lavender",
                      subtitle: "Toast and Milk",
                      rating: "4.7",
                    );
                  } else {
                    return _buildCarouselItem(
                      imagePath: "asset/images/strawberry_milkshake.png",
                      title: "Strawberry Milkshake",
                      subtitle: "Soft smoothies",
                      rating: "4.8",
                    );
                  }
                },
              ),
            ),

            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildCarouselItem({
    required String imagePath,
    required String title,
    required String subtitle,
    required String rating,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    title,
                    style: GoogleFonts.kavoon(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    subtitle,
                    style: GoogleFonts.katibeh(
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),
                ),

                SizedBox(height: 40),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(color: Colors.black26, blurRadius: 4),
                          ],
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.star, size: 20, color: Colors.black),
                            SizedBox(width: 6),
                            Text(
                              rating,
                              style: GoogleFonts.katibeh(
                                fontSize: 20,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.arrow_right_alt,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: -20,
            left: 40,
            right: 40,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0, 3),
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
