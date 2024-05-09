import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tozno/config/routes/app_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 2500)).then(
      (value) => Navigator.pushNamed(context, AppPages.intro),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3A41EE),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tozno',
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                ),
              ),
            ),
            Text(
              "LET'S SHOP IN",
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  letterSpacing: 5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
