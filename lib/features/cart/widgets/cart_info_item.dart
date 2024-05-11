import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartInfoItem extends StatelessWidget {
  const CartInfoItem({
    super.key,
    required this.title,
    this.tailText = '',
  });

  final String title;
  final String tailText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                tailText,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    color: Color(0xff3A41EE),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Divider(
            color: Color(0xffBABABA),
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
