import 'package:flutter/material.dart';
import 'package:flutter_application_taskuy/saya.dart';
import 'package:flutter_application_taskuy/tambah.dart';
import 'package:flutter_application_taskuy/tugas.dart';
import 'beranda.dart';
import 'notification.dart';

class Hasil extends StatefulWidget {
  const Hasil({super.key});

  @override
  State<Hasil> createState() => _HasilState();
}

class _HasilState extends State<Hasil> {
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
                    "Pemrograman Mobile",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF018592),
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Desain + prototype aplikasi",
                    style: TextStyle(fontSize: 16, color: Color(0XFFEDEDED)),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Deadline : 20 Oktober 2025",
                    style: TextStyle(fontSize: 16, color: Color(0XFFEDEDED)),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "TUGAS DESAIN APLIKASI",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF018592),
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Tugas kali ini membuat desain aplikasi",
                    style: TextStyle(fontSize: 16, color: Color(0XFFEDEDED)),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "beserta prototype-nya, sesuai arahan",
                    style: TextStyle(fontSize: 16, color: Color(0XFFEDEDED)),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "dosen.",
                    style: TextStyle(fontSize: 16, color: Color(0XFFEDEDED)),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Desain harus menggambarkan tampilan",
                    style: TextStyle(fontSize: 16, color: Color(0XFFEDEDED)),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "UI & UX dengan jelas.",
                    style: TextStyle(fontSize: 16, color: Color(0XFFEDEDED)),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Kumpulkan hasilnya dalam bentuk file",
                    style: TextStyle(fontSize: 16, color: Color(0XFFEDEDED)),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "PDF dengan format:",
                    style: TextStyle(fontSize: 16, color: Color(0XFFEDEDED)),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Nama_NIM_TugasDesainAplikasi.pdf",
                    style: TextStyle(fontSize: 16, color: Color(0XFFEDEDED)),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Apakah tugas ini sudah selesai ?",
                    style: TextStyle(fontSize: 16, color: Color(0XFFEDEDED)),
                  ),
                ],
              ),
            ),

            SizedBox(height: 18),

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
                    style: TextStyle(fontSize: 16, color: Color(0XFFEDEDED)),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Deadline : 30 Oktober 2025",
                    style: TextStyle(fontSize: 16, color: Color(0XFFEDEDED)),
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
                      color: Color(0XFFEDEDED),
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
                      color: Color(0XFFEDEDED),
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
                      color: Color(0XFFEDEDED),
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
