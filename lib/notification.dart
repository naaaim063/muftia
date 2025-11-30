import 'package:flutter/material.dart';
import 'beranda.dart';
import 'tugas.dart';
import 'saya.dart';

class Notifikasi extends StatefulWidget {
  const Notifikasi({super.key});

  @override
  State<Notifikasi> createState() => _NotifikasiState();
}

class _NotifikasiState extends State<Notifikasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF161618),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Notifikasi                                                       Semua",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 200),

            Icon(Icons.notifications_active, size: 120, color: Colors.white),

            SizedBox(height: 20),

            Text(
              "Tidak ada notifikasi",
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 5),

            Text(
              "Notifikasi akan muncul di sini",
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const Spacer(),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color:Color(0XFF1E1E1E),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Beranda()),
                      );
                    },
                    child: const Icon(
                      Icons.cottage,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Tugas()),
                      );
                    },
                    child: const Icon(
                      Icons.menu_book,
                      size: 28,
                      color: Colors.white,
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Notifikasi()),
                      );
                    },
                    child: const Icon(
                      Icons.notifications_active,
                      size: 28,
                      color: Color(0XFF018592),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Saya()),
                      );
                    },
                    child: const Icon(
                      Icons.person,
                      size: 28,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
