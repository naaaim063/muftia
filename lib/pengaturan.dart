import 'package:flutter/material.dart';
import 'package:flutter_application_taskuy/login.dart';

class Pengaturan extends StatefulWidget {
  @override
  _PengaturanState createState() => _PengaturanState();
}

class _PengaturanState extends State<Pengaturan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF161618),
      appBar: AppBar(
        title: const Text(
          "Setting",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "roboto",
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0XFF161618),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image(
                image: AssetImage('asset/images/Taskuy.jpeg'),
                height: 250,
                width: 250,
              ),
            ),
            SizedBox(height: 20),

            Text(
              "Setting",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

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
              child: const Text("Dark Mode", style: TextStyle(fontSize: 18)),
            ),

            SizedBox(height: 20),

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
              child: const Text("Notifikasi", style: TextStyle(fontSize: 18)),
            ),

            SizedBox(height: 100),

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
          ],
        ),
      ),
    );
  }
}
