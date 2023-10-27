import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OpticalCard extends StatelessWidget {
  const OpticalCard(
      {Key? key,
      required this.option,
      required this.color,
      })
      : super(key: key);

  final String option;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Card(
          color: color,
          child: ListTile(
            title: Text(
              option,
              textAlign: TextAlign.center,
              style: GoogleFonts.robotoMono(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
          )),
    );
  }
}
