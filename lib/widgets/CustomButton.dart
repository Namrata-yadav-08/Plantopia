// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantopia/widgets/screensize.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  CustomButton({required this.text, required this.onPressed});
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          isPressed = false;
        });
      },
      onTapCancel: () {
        setState(() {
          isPressed = false;
        });
      },
      child: Container(
        height: ScreenSize.height(context) * 0.0675,
        width: ScreenSize.width(context) * 0.83,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromARGB(255, 17, 136, 68),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10),
          color: isPressed
              ? Color.fromARGB(255, 17, 136, 68)
              : Color.fromARGB(255, 235, 253, 242),
        ),
        // padding: EdgeInsets.symmetric(
        //     vertical: ScreenSize.height(context) * 0.018875,
        //     horizontal: ScreenSize.width(context) * 0.0416),
        child: Center(
          child: Text(
            widget.text,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: isPressed
                    ? Color.fromARGB(255, 246, 237, 237)
                    : Color.fromARGB(255, 17, 136, 68),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
