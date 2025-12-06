import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:milk_mood/chekout.dart';

class Keranjang extends StatefulWidget {
  const Keranjang({super.key});

  @override
  State<Keranjang> createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang> {
  bool showPancake = true;

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
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Color(0xFFE1AEAE),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.arrow_back, color: Colors.black),
                  ),
                ),
              ),
              Positioned(
                top: 12,
                right: 12,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.close, color: Colors.black),
                ),
              ),
              Positioned(
                top: 32,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      "asset/images/cart.png",
                      color: Colors.black,
                      height: 42,
                    ),
                    SizedBox(height: 1),
                    Text(
                      "Cart",
                      style: GoogleFonts.katibeh(
                        color: Colors.black,
                        fontSize: 42,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 24),

          Expanded(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 8,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "asset/images/cake_box_oreo.png",
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Cake Box Oreo",
                                  style: GoogleFonts.katibeh(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  "Rp 20.000",
                                  style: GoogleFonts.katibeh(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 36),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
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
                              horizontal: 18,
                              vertical: 10,
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "+   2   1",
                            style: GoogleFonts.katibeh(fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 8,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "asset/images/black_coffe.png",
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Americano",
                                  style: GoogleFonts.katibeh(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  "Rp 18.000",
                                  style: GoogleFonts.katibeh(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 36),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
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
                              horizontal: 18,
                              vertical: 10,
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "+   1   1",
                            style: GoogleFonts.katibeh(fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                if (showPancake)
                  Dismissible(
                    key: const Key("pancake_item"),
                    direction: DismissDirection.endToStart,
                    onDismissed: (direction) {
                      setState(() {
                        showPancake = false;
                      });
                    },
                    background: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 6,
                      ),
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.centerRight,
                      child: const Icon(
                        Icons.delete,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 8,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "asset/images/pancake.png",
                                  width: 60,
                                  height: 60,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Pancake",
                                      style: GoogleFonts.katibeh(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      "Rp 25.000",
                                      style: GoogleFonts.katibeh(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(height: 36),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
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
                                  horizontal: 18,
                                  vertical: 10,
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "+   1   1",
                                style: GoogleFonts.katibeh(fontSize: 14),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                SizedBox(height: 24),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Subtotal",
                      style: GoogleFonts.katibeh(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Rp 63.000",
                      style: GoogleFonts.katibeh(
                        fontSize: 20,
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
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Rp 63.000",
                      style: GoogleFonts.katibeh(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 10,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Chekout(),
                          ),
                        );
                      },
                      child: Text(
                        "Payment",
                        style: GoogleFonts.katibeh(
                          fontSize: 28,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
