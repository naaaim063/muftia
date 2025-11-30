import 'package:flutter/material.dart';
import 'package:flutter_application_taskuy/login.dart';
import 'beranda.dart';
import 'tugas.dart';
import 'notification.dart';

class Saya extends StatefulWidget {
  const Saya({super.key});

  @override
  State<Saya> createState() => _SayaState();
}

class _SayaState extends State<Saya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF161618),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(Icons.account_circle, size: 120, color: Color(0XFF018592)),

            SizedBox(height: 6),

            Text(
              "Naim Ganteng",
              style: TextStyle(
                fontSize: 35,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                color: Color(0XFF018592),
              ),
            ),

            SizedBox(height: 64),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Profile",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            SizedBox(height: 12),

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
              child: const Text(
                "naimmaskur61@gmail.com",
                style: TextStyle(fontSize: 18),
              ),
            ),

            SizedBox(height: 12),

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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginPage()),
                );
              },
              child: const Text(
                "Pusat Bantuan",
                style: TextStyle(fontSize: 18),
              ),
            ),

            SizedBox(height: 12),

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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginPage()),
                );
              },
              child: const Text(
                "Kebijakan Privasi",
                style: TextStyle(fontSize: 18),
              ),
            ),

            SizedBox(height: 12),

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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginPage()),
                );
              },
              child: const Text("Settings", style: TextStyle(fontSize: 18)),
            ),

            SizedBox(height: 32),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0XFF823032),
                foregroundColor: Colors.white,
                minimumSize: Size(500, 54),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginPage()),
                );
              },
              child: const Text(
                "Log Out",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            const Spacer(),

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
                      color: Color(0XFF018592),
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
