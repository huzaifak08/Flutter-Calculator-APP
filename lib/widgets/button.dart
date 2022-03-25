import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    Key? key,
    required this.text,
    required this.fillColor,
    required this.textColor,
    required this.textSize,
    required this.callback,
  }) : super(key: key);

  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: ElevatedButton(
          onPressed: () {
            callback(text);
          },
          child: Text(
            text,
            style:
                GoogleFonts.rubik(fontSize: textSize, color: Color(textColor)),
          ),
          style: ElevatedButton.styleFrom(
            primary: Color(fillColor),
          ),
        ),
      ),
    );
  }
}
