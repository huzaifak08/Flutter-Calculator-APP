import 'package:calculator/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int firstNum;
  late int secondNum;
  late String history = '';
  late String textToDisplay = '';
  late String res;
  late String Operation;

  void btnOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (btnVal == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    } else if (btnVal == '+/-') {
      if (textToDisplay[0] != '-') {
        res = '-' + textToDisplay;
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (btnVal == '<') {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '/') {
      firstNum = int.parse(textToDisplay);
      res = '';
      Operation = btnVal;
    } else if (btnVal == '=') {
      secondNum = int.parse(textToDisplay);
      if (Operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + Operation.toString() + secondNum.toString();
      }
      if (Operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + Operation.toString() + secondNum.toString();
      }
      if (Operation == 'X') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + Operation.toString() + secondNum.toString();
      }
      if (Operation == '/') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + Operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }

    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff28527a),
      appBar: AppBar(
        title: Text("Calculator HK"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  history,
                  style:
                      GoogleFonts.rubik(fontSize: 24, color: Color(0x66FFFFFF)),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  textToDisplay,
                  style: GoogleFonts.rubik(fontSize: 48, color: Colors.white),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: 'AC',
                  fillColor: 0xff8ac4d0,
                  textColor: 0xff000000,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: 'C',
                  fillColor: 0xff8ac4d0,
                  textColor: 0xff000000,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '<',
                  fillColor: 0xfff4d160,
                  textColor: 0xff000000,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '/',
                  fillColor: 0xfff4d160,
                  textColor: 0xff000000,
                  textSize: 20,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '9',
                  fillColor: 0xff8ac4d0,
                  textColor: 0xff000000,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '8',
                  fillColor: 0xff8ac4d0,
                  textColor: 0xff000000,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '7',
                  fillColor: 0xff8ac4d0,
                  textColor: 0xff000000,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: 'X',
                  fillColor: 0xfff4d160,
                  textColor: 0xff000000,
                  textSize: 20,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '6',
                  fillColor: 0xff8ac4d0,
                  textColor: 0xff000000,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '5',
                  fillColor: 0xff8ac4d0,
                  textColor: 0xff000000,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '4',
                  fillColor: 0xff8ac4d0,
                  textColor: 0xff000000,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '-',
                  fillColor: 0xfff4d160,
                  textColor: 0xff000000,
                  textSize: 20,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '3',
                  fillColor: 0xff8ac4d0,
                  textColor: 0xff000000,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '2',
                  fillColor: 0xff8ac4d0,
                  textColor: 0xff000000,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '1',
                  fillColor: 0xff8ac4d0,
                  textColor: 0xff000000,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '+',
                  fillColor: 0xfff4d160,
                  textColor: 0xff000000,
                  textSize: 20,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '+/-',
                  fillColor: 0xff8ac4d0,
                  textColor: 0xff000000,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '0',
                  fillColor: 0xff8ac4d0,
                  textColor: 0xff000000,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '00',
                  fillColor: 0xff8ac4d0,
                  textColor: 0xff000000,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '=',
                  fillColor: 0xfff4d160,
                  textColor: 0xff000000,
                  textSize: 20,
                  callback: btnOnClick,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
