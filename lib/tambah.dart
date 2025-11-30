import 'package:flutter/material.dart';
import 'beranda.dart';
import 'tugas.dart';
import 'notification.dart';
import 'saya.dart';

class Tambah extends StatefulWidget {
  const Tambah({super.key});

  @override
  State<Tambah> createState() => _TambahState();
}

class _TambahState extends State<Tambah> {
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
              "Tambah",
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
                backgroundColor: Color(0XFF1E1E1E),
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
                    "Mata Kuliah",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF018592),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Input Mata Kuliah",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(height: 12),
                ],
              ),
            ),

            SizedBox(height: 24),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0XFF1E1E1E),
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
                    "Jenis Tugas",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF018592),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Input Jenis Tugas",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(height: 12),
                ],
              ),
            ),

            SizedBox(height: 24),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0XFF1E1E1E),
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
                    "Deskripsi",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF018592),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Input Deskripsi Tugas",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(height: 12),
                ],
              ),
            ),

            SizedBox(height: 24),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0XFF1E1E1E),
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
                    "Deadline",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF018592),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Input Deadline Tugas",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(height: 12),
                ],
              ),
            ),

            SizedBox(height: 24),

            const Spacer(),

            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  backgroundColor: Color(0XFF018592),
                  foregroundColor: Colors.white,
                  minimumSize: Size(0, 0),
                ),
                onPressed: () {},
                child: const Text(
                  "Save",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            SizedBox(height: 20),

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
