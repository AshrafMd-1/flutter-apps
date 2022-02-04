import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int textColor;
  final int fillColor;
  final double textSize;
  final Function callBack;

  const CalculatorButton({
    required this.text,
    required this.textColor,
    required this.textSize,
    required this.fillColor,
    required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: const EdgeInsets.fromLTRB(0, 3, 0, 3),
      child: SizedBox(
        width: 90,
        height: 70,
        child: ElevatedButton(
          onPressed: () => callBack(
            text,
          ),
          style: ElevatedButton.styleFrom(
            primary: Color(
              fillColor,
            ),
            shape: StadiumBorder(),
          ),
          child: Text(
            text,
            style: GoogleFonts.squadaOne(
              fontSize: textSize,
              color: Color(
                textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
