import 'package:flutter/material.dart';

class LoginGoogleOverlay extends StatelessWidget {
  final VoidCallback onClose;

  const LoginGoogleOverlay({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        color: Colors.black.withOpacity(0.6),
        child: Center(
          child: Stack(
            children: [
              Container(
                width: 420,
                height: 540,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Pilih akun",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 3),

                    Text(
                      "untuk melanjutkan ke Milk and Mood",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 30),

                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'asset/images/user.png',
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Najma Qodryan",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  "najma23@gmail.com",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Divider(thickness: 1, color: Colors.black),
                      ],
                    ),

                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'asset/images/user.png',
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Amelia Iryani",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  "amelsn47@gmail.com",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Divider(thickness: 1, color: Colors.black),
                      ],
                    ),

                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'asset/images/user.png',
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Muftia Ayu",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  "Muftia12@gmail.com",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Divider(thickness: 1, color: Colors.black),
                      ],
                    ),

                    SizedBox(height: 12),

                    Text(
                      "untuk melanjutkan, Google akan membagikan nama, alamat,"
                      "email dan foto profil Anda ke Milk and Mood. Sebelum"
                      "menggunakan aplikasi ini tinjau kebijakan privasi dan"
                      " persyaratan layanan-nya.",
                    ),
                  ],
                ),
              ),

              Positioned(
                top: 8,
                right: 8,
                child: GestureDetector(
                  onTap: onClose,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.close, size: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
