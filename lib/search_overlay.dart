import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detail.dart'; 

class SearchOverlay extends StatelessWidget {
  const SearchOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Stack(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 180),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(color: Color(0xFFC4B0B0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 32),
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.all(10),
                      shrinkWrap: true,
                      children: [
  
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Detail(),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 4),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 4,
                                  offset: Offset(2, 2),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  'asset/images/cake_box_oreo.png',
                                  width: 60,
                                  height: 60,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(width: 15),
                                Text(
                                  'Cake box oreo',
                                  style: GoogleFonts.katibeh(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(vertical: 4),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'asset/images/cappucino.png',
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 15),
                              Text(
                                'Cappucino',
                                style: GoogleFonts.katibeh(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(vertical: 4),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'asset/images/caramel_latte.png',
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 15),
                              Text(
                                'Caramel Latte',
                                style: GoogleFonts.katibeh(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(vertical: 4),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'asset/images/cookies.png',
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 15),
                              Text(
                                'Cookies',
                                style: GoogleFonts.katibeh(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
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

          Positioned(
            top: 150,
            right: 30,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                icon: Icon(Icons.close, color: Colors.black, size: 28),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
