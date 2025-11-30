import 'package:flutter/material.dart';
import 'package:flutter_application_taskuy/hasil.dart';
import 'package:flutter_application_taskuy/saya.dart';
import 'package:flutter_application_taskuy/tambah.dart';
import 'beranda.dart';
import 'notification.dart';

class Tugas extends StatefulWidget {
  const Tugas({super.key});

  @override
  State<Tugas> createState() => _TugasState();
}

class _TugasState extends State<Tugas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF161618),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),

            Text(
              "Daftar",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color(0XFF018592),
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 3),

            Text(
              "        Tugas",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color(0XFF018592),
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 28),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0XFF1E1E1E),
                foregroundColor: Colors.white,
                minimumSize: Size(450, 54),
                alignment: Alignment.centerLeft,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Hasil()),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Pemrograman Mobile",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF018592),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Desain + prototype aplikasi",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Deadline : 20 Oktober 2025",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0XFF1E1E1E),
                foregroundColor: Colors.white,
                minimumSize: Size(450, 54),
                alignment: Alignment.centerLeft,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Pemrograman Website",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF018592),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Website dengan HTML & CSS",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Deadline : 25 Oktober 2025",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0XFF1E1E1E),
                foregroundColor: Colors.white,
                minimumSize: Size(450, 54),
                alignment: Alignment.centerLeft,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Jaringan Komputer",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF018592),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Simulasi jaringan dengan Cisco",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Deadline : 27 Oktober 2025",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0XFF1E1E1E),
                foregroundColor: Colors.white,
                minimumSize: Size(450, 54),
                alignment: Alignment.centerLeft,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Basis Data",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF018592),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Pemodelan Data",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Deadline : 30 Oktober 2025",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),

            SizedBox(height: 28),

            const Spacer(),

            Center(
              child: IconButton(
                icon: const Icon(
                  Icons.add_circle,
                  color: Color(0XFF018592),
                  size: 50,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tambah()),
                  );
                },
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Color(0XFF1E1E1E),
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
                      color: Color(0XFF018592),
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
                      color: Colors.white,
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