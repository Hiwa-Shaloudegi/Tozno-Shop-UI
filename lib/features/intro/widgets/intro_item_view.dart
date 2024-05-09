import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroItemView extends StatelessWidget {
  const IntroItemView({
    super.key,
    required this.title,
    required this.content,
    required this.foregroundPlaceholderColor,
    required this.backgroundPlaceholderColor,
  });

  final String title;
  final String content;
  final Color foregroundPlaceholderColor;
  final Color backgroundPlaceholderColor;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: size.height * 0.1),

          // Image Placeholders
          Stack(
            children: [
              Transform.rotate(
                angle: -0.25,
                child: Container(
                  width: size.width * 0.7,
                  height: size.width * 0.8,
                  decoration: BoxDecoration(
                    color: backgroundPlaceholderColor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
              Container(
                width: size.width * 0.7,
                height: size.width * 0.8,
                decoration: BoxDecoration(
                  color: foregroundPlaceholderColor,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.12),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  content,
                  style: GoogleFonts.quicksand(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
