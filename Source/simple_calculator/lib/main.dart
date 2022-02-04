import './calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const CalcApp());
}

class CalcApp extends StatelessWidget {
  const CalcApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "A Simple Calculator",
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyCalcPage(title: 'Calculator'),
    );
  }
}

class MyCalcPage extends StatefulWidget {
  const MyCalcPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyCalcPage> createState() => _MyCalcPageState();
}

class _MyCalcPageState extends State<MyCalcPage> {
  late int firstNum = 0;
  late int secondNum = 0;
  String history = "";

  String textToDisplay = "";
  late String res;
  late String operation;

  void btnOnClick(String btnVal) {
    if (btnVal == "C") {
      textToDisplay = "";
      firstNum = 0;
      secondNum = 0;
      res = "";
    } else if (btnVal == "AC") {
      textToDisplay = "";
      firstNum = 0;
      secondNum = 0;
      res = "";
      history = "";
    } else if (btnVal == "+/-") {
      if (textToDisplay[0] != "-") {
        res = "-" + textToDisplay;
        history = "";
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (btnVal == "<-") {
      if (textToDisplay == "") {
        noBack(context);
      } else {
        res = textToDisplay.substring(0, textToDisplay.length - 1);
      }
    } else if (btnVal == "+" ||
        btnVal == "-" ||
        btnVal == "x" ||
        btnVal == "/") {
      try {
        firstNum = int.parse(textToDisplay);
        res = "";
        operation = btnVal;
      } on FormatException {
        _showAlert(context);
      }
    } else if (btnVal == "=") {
      try {
        secondNum = int.parse(textToDisplay);
        if (operation == "+") {
          res = (firstNum + secondNum).toString();
          history =
              firstNum.toString() + operation.toString() + secondNum.toString();
        }
        if (operation == "-") {
          res = (firstNum - secondNum).toString();
          history =
              firstNum.toString() + operation.toString() + secondNum.toString();
        }
        if (operation == "x") {
          res = (firstNum * secondNum).toString();
          history =
              firstNum.toString() + operation.toString() + secondNum.toString();
        }
        if (operation == "/") {
          res = (firstNum / secondNum).toString();
          history =
              firstNum.toString() + operation.toString() + secondNum.toString();
        }
      } on FormatException {
        _showAlert(context);
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
      appBar: AppBar(
        title: Center(
          child: Text(
            widget.title,
            style: GoogleFonts.lobster(
                color: Colors.cyanAccent,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 50),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.account_box),
            onPressed: () {
              myInfo(context);
            },
          ),
        ],
        backgroundColor: Colors.purpleAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 20, 5),
              child: Text(
                history,
                style: GoogleFonts.courgette(
                  color: Colors.redAccent.shade100,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 50,
                ),
              ),
            ),
            alignment: const Alignment(1.0, 1.0),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 5, 30, 12),
              child: Text(
                textToDisplay,
                style: GoogleFonts.abrilFatface(
                  color: Colors.redAccent.shade400,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 70,
                ),
              ),
            ),
            alignment: const Alignment(1.0, 1.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CalculatorButton(
                textSize: 50,
                text: "AC",
                textColor: 0xFFFFFF00,
                fillColor: 0xFFFF7043,
                callBack: btnOnClick,
              ),
              CalculatorButton(
                textSize: 60,
                text: "C",
                textColor: 0xFFFFFF00,
                fillColor: 0xFFFF7043,
                callBack: btnOnClick,
              ),
              CalculatorButton(
                textSize: 60,
                text: "<-",
                textColor: 0xFFFF5252,
                fillColor: 0xFF40C4FF,
                callBack: btnOnClick,
              ),
              CalculatorButton(
                textSize: 55,
                text: "/",
                textColor: 0xFFFF1744,
                fillColor: 0xFFFFFF00,
                callBack: btnOnClick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CalculatorButton(
                textSize: 50,
                text: "9",
                textColor: 0xFFF50057,
                fillColor: 0xFFB2FF59,
                callBack: btnOnClick,
              ),
              CalculatorButton(
                textSize: 50,
                text: "8",
                textColor: 0xFFF50057,
                fillColor: 0xFFB2FF59,
                callBack: btnOnClick,
              ),
              CalculatorButton(
                textSize: 50,
                text: "7",
                textColor: 0xFFF50057,
                fillColor: 0xFFB2FF59,
                callBack: btnOnClick,
              ),
              CalculatorButton(
                textSize: 55,
                text: "x",
                textColor: 0xFFFF1744,
                fillColor: 0xFFFFFF00,
                callBack: btnOnClick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CalculatorButton(
                textSize: 50,
                text: "6",
                textColor: 0xFFF50057,
                fillColor: 0xFFB2FF59,
                callBack: btnOnClick,
              ),
              CalculatorButton(
                textSize: 50,
                text: "5",
                textColor: 0xFFF50057,
                fillColor: 0xFFB2FF59,
                callBack: btnOnClick,
              ),
              CalculatorButton(
                textSize: 50,
                text: "4",
                textColor: 0xFFF50057,
                fillColor: 0xFFB2FF59,
                callBack: btnOnClick,
              ),
              CalculatorButton(
                textSize: 55,
                text: "-",
                textColor: 0xFFFF1744,
                fillColor: 0xFFFFFF00,
                callBack: btnOnClick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CalculatorButton(
                textSize: 50,
                text: "3",
                textColor: 0xFFF50057,
                fillColor: 0xFFB2FF59,
                callBack: btnOnClick,
              ),
              CalculatorButton(
                textSize: 50,
                text: "2",
                textColor: 0xFFF50057,
                fillColor: 0xFFB2FF59,
                callBack: btnOnClick,
              ),
              CalculatorButton(
                textSize: 50,
                text: "1",
                textColor: 0xFFF50057,
                fillColor: 0xFFB2FF59,
                callBack: btnOnClick,
              ),
              CalculatorButton(
                textSize: 55,
                text: "+",
                textColor: 0xFFFF1744,
                fillColor: 0xFFFFFF00,
                callBack: btnOnClick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CalculatorButton(
                textSize: 35,
                text: "+/-",
                textColor: 0xFFFF5252,
                fillColor: 0xFF40C4FF,
                callBack: btnOnClick,
              ),
              CalculatorButton(
                textSize: 50,
                text: "0",
                textColor: 0xFFF50057,
                fillColor: 0xFFB2FF59,
                callBack: btnOnClick,
              ),
              CalculatorButton(
                textSize: 50,
                text: "00",
                textColor: 0xFFFF5252,
                fillColor: 0xFF40C4FF,
                callBack: btnOnClick,
              ),
              CalculatorButton(
                textSize: 60,
                text: "=",
                textColor: 0xFFFFFF00,
                fillColor: 0xFFFF7043,
                callBack: btnOnClick,
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showAlert(BuildContext context) {
    Widget okButton = Container(
      alignment: Alignment.bottomCenter,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.purpleAccent,
          shape: const StadiumBorder(),
        ),
        child: Text(
          "Close",
          style: GoogleFonts.pacifico(
            fontSize: 30,
            color: Colors.cyanAccent,
          ),
        ),
      ),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
          BeveledRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
          title: Text(
            "Operation error",
            textAlign: TextAlign.center,
            style: GoogleFonts.lobsterTwo(
              color: Colors.purpleAccent.shade400,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
              fontSize: 50,
            ),
          ),
          content: Text(
            "Did not Chose a number",
            style: GoogleFonts.dancingScript(
                color: Colors.redAccent.shade400,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 40),
          ),
          actions: [
            okButton,
          ],
          elevation: 5,
        );
      },
    );
  }

  void noBack(BuildContext context) {
    Widget okButton = Container(
      alignment: Alignment.bottomCenter,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.purpleAccent,
          shape: const StadiumBorder(),
        ),
        child: Text(
          "Close",
          style: GoogleFonts.pacifico(
            fontSize: 30,
            color: Colors.cyanAccent,
          ),
        ),
      ),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
          BeveledRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
          title: Text(
            "Button error",
            textAlign: TextAlign.center,
            style: GoogleFonts.lobsterTwo(
              color: Colors.purpleAccent.shade400,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
              fontSize: 50,
            ),
          ),
          content: Text(
            "No number to delete",
            style: GoogleFonts.dancingScript(
                color: Colors.redAccent.shade400,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 40),
          ),
          actions: [
            okButton,
          ],
          elevation: 5,
        );
      },
    );
  }

  void myInfo(BuildContext context) {
    Widget okButton = Container(
      alignment: Alignment.bottomCenter,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.purpleAccent,
          shape: const StadiumBorder(),
        ),
        child: Text(
          "Close",
          style: GoogleFonts.pacifico(
            fontSize: 30,
            color: Colors.cyanAccent,
          ),
        ),
      ),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
          BeveledRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
          title: Text(
            "Info",
            textAlign: TextAlign.center,
            style: GoogleFonts.lobsterTwo(
              color: Colors.purpleAccent.shade400,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
              fontSize: 50,
            ),
          ),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "By",
                style: GoogleFonts.mansalva(
                    color: Colors.greenAccent.shade400,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 40),
              ),
              Text(
                " Ashraf.MD",
                style: GoogleFonts.overTheRainbow(
                    color: Colors.redAccent.shade400,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 35),
              ),
              Text(
                "Date",
                style: GoogleFonts.mansalva(
                    color: Colors.greenAccent.shade400,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 40),
              ),
              Text(
                "18-1-2021",
                style: GoogleFonts.overTheRainbow(
                    color: Colors.redAccent.shade400,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 35),
              ),
              Text(
                "Version info",
                style: GoogleFonts.mansalva(
                    color: Colors.greenAccent.shade400,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 40),
              ),
              Text(
                "1.1.0",
                style: GoogleFonts.overTheRainbow(
                    color: Colors.redAccent.shade400,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 35),
              ),
            ],
          ),
          actions: [
            okButton,
          ],
          elevation: 5,
        );
      },
    );
  }
}
