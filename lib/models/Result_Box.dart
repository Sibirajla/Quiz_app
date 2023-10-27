import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/constant.dart';

class ResultBox extends StatelessWidget {
  const ResultBox({
    Key? key,
    required this.result,
    required this.questionLength,
    required this.onPressed,////////////////////
  }):super(key: key);
  final int result;
  final int questionLength;
  final VoidCallback onPressed;////////////////////////

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return AlertDialog(
      backgroundColor: background,
      content: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              'Result',
              style: GoogleFonts.lavishlyYours(
                  color: neutral,
                  fontSize: 45.0,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 20.0),
            CircleAvatar(
              radius: 70.0,
              backgroundColor: result ==questionLength/2 ?
              Colors.yellow : result < questionLength/2 ?incorrect : correct,
              child: Text(
                '$result/$questionLength',
                style:  GoogleFonts.lavishlyYours(
                    fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: title
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              result == questionLength /2 ? 'Almost There'
                  : result < questionLength/2 ? 'Try Again' : 'Great',
              style: GoogleFonts.lavishlyYours(
                  color:neutral,
                  fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 35.0), ///////////////////////////
            GestureDetector(
              onTap: onPressed,
              child: Container(
                width: width,
                decoration: BoxDecoration(
                  color: green,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'Start Over',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lavishlyYours(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: title,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}