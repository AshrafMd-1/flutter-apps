import 'package:flutter/material.dart';

void main() {
  runApp(const MyBox());
}

class MyBox extends StatelessWidget {
  const MyBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Boxes Mover',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyBoxPage(title: 'The Box'),
    );
  }
}

class MyBoxPage extends StatefulWidget {
  const MyBoxPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyBoxPage> createState() => _MyBoxPageState();
}

class _MyBoxPageState extends State<MyBoxPage> {
  int boxNo = 1;
  late bool entry1;
  late bool entry2;
  late bool entry3;
  late bool entry4;
  late bool entry5;
  late bool entry6;
  late bool entry7;
  late bool entry8;
  late bool entry9;
  late String listNo;
  int fillColor = 0xFFB388FF;
  int noFill = 0xFFFFFFFF;
  int colorFill1 = 0xFFE040FB;
  int colorFill2 = 0xFFFFFFFF;
  int colorFill3 = 0xFFFFFFFF;
  int colorFill4 = 0xFFFFFFFF;
  int colorFill5 = 0xFFFFFFFF;
  int colorFill6 = 0xFFFFFFFF;
  int colorFill7 = 0xFFFFFFFF;
  int colorFill8 = 0xFFFFFFFF;
  int colorFill9 = 0xFFFFFFFF;

  void callBack(listNo) {
    entry1 = false;
    entry2 = false;
    entry3 = false;
    entry4 = false;
    entry5 = false;
    entry6 = false;
    entry7 = false;
    entry8 = false;
    entry9 = false;
    if (boxNo == 1) {
      if (listNo == "up") {
        entry1 = true;
      } else if (listNo == "down") {
        entry4 = true;
      } else if (listNo == "left") {
        entry1 = true;
      } else if (listNo == "right") {
        entry2 = true;
      }
    } else if (boxNo == 3) {
      if (listNo == "up") {
        entry3 = true;
      } else if (listNo == "down") {
        entry6 = true;
      } else if (listNo == "left") {
        entry2 = true;
      } else if (listNo == "right") {
        entry3 = true;
      }
    } else if (boxNo == 4) {
      if (listNo == "up") {
        entry1 = true;
      } else if (listNo == "down") {
        entry7 = true;
      } else if (listNo == "left") {
        entry4 = true;
      } else if (listNo == "right") {
        entry5 = true;
      }
    } else if (boxNo == 5) {
      if (listNo == "up") {
        entry2 = true;
      } else if (listNo == "down") {
        entry8 = true;
      } else if (listNo == "left") {
        entry4 = true;
      } else if (listNo == "right") {
        entry6 = true;
      }
    } else if (boxNo == 6) {
      if (listNo == "up") {
        entry3 = true;
      } else if (listNo == "down") {
        entry9 = true;
      } else if (listNo == "left") {
        entry5 = true;
      } else if (listNo == "right") {
        entry6 = true;
      }
    } else if (boxNo == 2) {
      if (listNo == "up") {
        entry2 = true;
      } else if (listNo == "down") {
        entry5 = true;
      } else if (listNo == "left") {
        entry1 = true;
      } else if (listNo == "right") {
        entry3 = true;
      }
    } else if (boxNo == 7) {
      if (listNo == "up") {
        entry4 = true;
      } else if (listNo == "down") {
        entry7 = true;
      } else if (listNo == "left") {
        entry7 = true;
      } else if (listNo == "right") {
        entry8 = true;
      }
    } else if (boxNo == 8) {
      if (listNo == "up") {
        entry5 = true;
      } else if (listNo == "down") {
        entry8 = true;
      } else if (listNo == "left") {
        entry7 = true;
      } else if (listNo == "right") {
        entry9 = true;
      }
    } else if (boxNo == 9) {
      if (listNo == "up") {
        entry6 = true;
      } else if (listNo == "down") {
        entry9 = true;
      } else if (listNo == "left") {
        entry8 = true;
      } else if (listNo == "right") {
        entry9 = true;
      }
    }

    if (entry1) {
      colorFill1 = fillColor;
      colorFill2 = noFill;
      colorFill3 = noFill;
      colorFill4 = noFill;
      colorFill5 = noFill;
      colorFill6 = noFill;
      colorFill7 = noFill;
      colorFill8 = noFill;
      colorFill9 = noFill;
      boxNo = 1;
    } else if (entry2) {
      colorFill2 = fillColor;
      colorFill1 = noFill;
      colorFill3 = noFill;
      colorFill4 = noFill;
      colorFill5 = noFill;
      colorFill6 = noFill;
      colorFill7 = noFill;
      colorFill8 = noFill;
      colorFill9 = noFill;
      boxNo = 2;
    } else if (entry3) {
      colorFill3 = fillColor;
      colorFill1 = noFill;
      colorFill2 = noFill;
      colorFill4 = noFill;
      colorFill5 = noFill;
      colorFill6 = noFill;
      colorFill7 = noFill;
      colorFill8 = noFill;
      colorFill9 = noFill;
      boxNo = 3;
    } else if (entry4) {
      colorFill4 = fillColor;
      colorFill1 = noFill;
      colorFill3 = noFill;
      colorFill2 = noFill;
      colorFill5 = noFill;
      colorFill6 = noFill;
      colorFill7 = noFill;
      colorFill8 = noFill;
      colorFill9 = noFill;
      boxNo = 4;
    } else if (entry5) {
      colorFill5 = fillColor;
      colorFill1 = noFill;
      colorFill3 = noFill;
      colorFill4 = noFill;
      colorFill2 = noFill;
      colorFill6 = noFill;
      colorFill7 = noFill;
      colorFill8 = noFill;
      colorFill9 = noFill;
      boxNo = 5;
    } else if (entry6) {
      colorFill6 = fillColor;
      colorFill1 = noFill;
      colorFill3 = noFill;
      colorFill4 = noFill;
      colorFill5 = noFill;
      colorFill2 = noFill;
      colorFill7 = noFill;
      colorFill8 = noFill;
      colorFill9 = noFill;
      boxNo = 6;
    } else if (entry7) {
      colorFill7 = fillColor;
      colorFill1 = noFill;
      colorFill3 = noFill;
      colorFill4 = noFill;
      colorFill5 = noFill;
      colorFill6 = noFill;
      colorFill2 = noFill;
      colorFill8 = noFill;
      colorFill9 = noFill;
      boxNo = 7;
    } else if (entry8) {
      colorFill8 = fillColor;
      colorFill1 = noFill;
      colorFill3 = noFill;
      colorFill4 = noFill;
      colorFill5 = noFill;
      colorFill6 = noFill;
      colorFill7 = noFill;
      colorFill2 = noFill;
      colorFill9 = noFill;
      boxNo = 8;
    } else if (entry9) {
      colorFill9 = fillColor;
      colorFill1 = noFill;
      colorFill3 = noFill;
      colorFill4 = noFill;
      colorFill5 = noFill;
      colorFill6 = noFill;
      colorFill7 = noFill;
      colorFill8 = noFill;
      colorFill2 = noFill;
      boxNo = 9;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            widget.title,
          ),
        ),
      ),
      body: Container(
        color: Colors.tealAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 100,
                      height: 100,
                      color: Color(colorFill1),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 100,
                      height: 100,
                      color: Color(colorFill2),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 100,
                      height: 100,
                      color: Color(colorFill3),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 100,
                      height: 100,
                      color: Color(colorFill4),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 100,
                      height: 100,
                      color: Color(colorFill5),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 100,
                      height: 100,
                      color: Color(colorFill6),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 100,
                      height: 100,
                      color: Color(colorFill7),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 100,
                      height: 100,
                      color: Color(colorFill8),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 100,
                      height: 100,
                      color: Color(colorFill9),
                    )
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () => callBack(listNo = "up"),
                  child: const Text(
                    "up",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => callBack(listNo = "left"),
                      child: const Text(
                        "left",
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => callBack(listNo = "right"),
                      child: const Text(
                        "right",
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () => callBack(listNo = "down"),
                  child: const Text(
                    "down",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
