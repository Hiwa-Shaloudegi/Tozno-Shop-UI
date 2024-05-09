import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthViewToggleButton extends StatelessWidget {
  const AuthViewToggleButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
    this.isLeft = true,
  });

  final String text;
  final bool isSelected;
  final bool isLeft;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.black : Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: isLeft ? const Radius.circular(32) : Radius.zero,
          topLeft: isLeft ? const Radius.circular(32) : Radius.zero,
          bottomRight: isLeft ? Radius.zero : const Radius.circular(32),
          topRight: isLeft ? Radius.zero : const Radius.circular(32),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.only(
            bottomLeft: isLeft ? const Radius.circular(32) : Radius.zero,
            topLeft: isLeft ? const Radius.circular(32) : Radius.zero,
            bottomRight: isLeft ? Radius.zero : const Radius.circular(32),
            topRight: isLeft ? Radius.zero : const Radius.circular(32),
          ),
          // splashColor: Colors.red,
          onTap: onTap,
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: isSelected ? Colors.white : const Color(0xff3A41EE),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
