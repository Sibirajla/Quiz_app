import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/constant.dart';

class NextButton extends StatelessWidget {
  const NextButton({Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        const Expanded(child: SizedBox()), // Left empty space
        Expanded(
          flex: 3, // Adjust flex value to change the width of GestureDetector
          child: GestureDetector(
            child: Container(
              width: width,
              decoration: BoxDecoration(
                color: buttobg,
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'Next Question',
                textAlign: TextAlign.center,
                style: GoogleFonts.arefRuqaaInk(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: title,
                ),
              ),
            ),
          ),
        ),
        const Expanded(child: SizedBox()), // Right empty space
      ],
    );
  }
}
