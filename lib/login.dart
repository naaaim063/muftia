import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'beranda.dart';
import 'login_google_overlay.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _showGoogleLogin = false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [Color.fromARGB(255, 4, 111, 205), Color(0xFFFFFFFF)],
          ),
        ),

        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "asset/images/user.png",
                    color: Colors.white,
                    width: 100,
                  ),

                  const SizedBox(height: 8),
                  Text(
                    "Log in",
                    style: GoogleFonts.kavoon(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 36),

                  Container(
                    width: 460,
                    height: 320,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 48,
                      vertical: 18,
                    ),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 4, 111, 205),
                          Color(0xFFFFFFFF),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: "Email",
                            filled: true,
                            fillColor: const Color(0xFFFFFFFF),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ),

                        const SizedBox(height: 24),

                        TextField(
                          controller: _passwordController,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: "Password",
                            filled: true,
                            fillColor: const Color(0xFFFFFFFF),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ),

                        const SizedBox(height: 72),

                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              String email = _emailController.text.trim();
                              String password = _passwordController.text;

                              if (!email.contains("@gmail.com")) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text("Email salah")),
                                );
                                return;
                              }

                              if (password != "123456") {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Password salah"),
                                  ),
                                );
                                return;
                              }

                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Beranda(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFFFFFFF),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 36,
                                vertical: 18,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 6),

                  const Text("Belum punya akun? daftar dengan"),

                  const SizedBox(height: 12),

                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 28,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _showGoogleLogin = true;
                          });
                        },
                        child: Image.asset(
                          "asset/images/google-removebg-preview.png",
                          width: 28,
                        ),
                      ),

                      Image.asset(
                        "asset/images/facebook-removebg-preview.png",
                        width: 32,
                      ),
                      Image.asset(
                        "asset/images/apple-removebg-preview.png",
                        width: 24,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            if (_showGoogleLogin)
              LoginGoogleOverlay(
                onClose: () {
                  setState(() {
                    _showGoogleLogin = false;
                  });
                },
              ),
          ],
        ),
      ),
    );
  }
}
