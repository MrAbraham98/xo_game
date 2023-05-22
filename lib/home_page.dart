import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isXplayer = true;
  List<String> XO = ['', '', '', '', '', '', '', '', ''];

  void controlRow() {
    if (XO[0].isNotEmpty &&XO[1].isNotEmpty &&XO[2].isNotEmpty && XO[0] == XO[1] && XO[1] == XO[2]) {
      print('succes');
    } else if (XO[3].isNotEmpty &&XO[4].isNotEmpty &&XO[5].isNotEmpty && XO[3] == XO[4] && XO[4] == XO[5]) {
      print('succes');
    } else if (XO[6].isNotEmpty &&XO[7].isNotEmpty &&XO[8].isNotEmpty && XO[6] == XO[7] && XO[7] == XO[8]) {
      print('succes');
    }
  }

  void controlColumn() {
    if (XO[0].isNotEmpty &&XO[3].isNotEmpty &&XO[6].isNotEmpty && XO[0] == XO[3] && XO[3] == XO[6]) {
      print('succes');
    } else if (XO[1].isNotEmpty &&XO[4].isNotEmpty &&XO[7].isNotEmpty && XO[1] == XO[4] && XO[4] == XO[7]) {
      print('succes');
    } else if (XO[2].isNotEmpty &&XO[5].isNotEmpty &&XO[8].isNotEmpty && XO[2] == XO[5] && XO[5] == XO[8]) {
      print('succes');
    }
  }

  void controlCross() {
    if (XO[0].isNotEmpty &&XO[4].isNotEmpty &&XO[8].isNotEmpty && XO[0] == XO[4] && XO[4] == XO[8]) {
      print('succes');
    } else if (XO[2].isNotEmpty &&XO[4].isNotEmpty &&XO[6].isNotEmpty && XO[2] == XO[4] && XO[4] == XO[6]) {
      print('succes');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              for (var i = 0; i < 3; i++)
                Expanded(
                  child: GestureDetector(
                    child: Center(
                        child: Container(
                            width: 50,
                            height: 50,
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: Center(
                              child: Text(XO.isEmpty ? '' : XO[i],
                                  style: TextStyle(fontSize: 20)),
                            ))),
                    onTap: () {
                      setState(() {
                        if (isXplayer) {
                          XO[i] = 'X';
                          isXplayer = false;
                        } else {
                          XO[i] = 'O';
                          isXplayer = true;
                        }
                        controlRow();
                        controlColumn();
                        controlCross();
                      });
                    },
                  ),
                ),
            ],
          ),
          Row(
            children: [
              for (var i = 3; i < 6; i++)
                Expanded(
                  child: GestureDetector(
                    child: Center(
                        child: Container(
                            width: 50,
                            height: 50,
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: Center(
                              child: Text(XO.isEmpty ? '' : XO[i],
                                  style: TextStyle(fontSize: 20)),
                            ))),
                    onTap: () {
                      setState(() {
                        if (isXplayer) {
                          XO[i] = 'X';
                          isXplayer = false;
                        } else {
                          XO[i] = 'O';
                          isXplayer = true;
                        }
                        controlRow();
                        controlColumn();
                        controlCross();
                      });
                    },
                  ),
                ),
            ],
          ),
          Row(
            children: [
              for (var i = 6; i < 9; i++)
                Expanded(
                  child: GestureDetector(
                    child: Center(
                        child: Container(
                            width: 50,
                            height: 50,
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: Center(
                              child: Text(XO.isEmpty ? '' : XO[i],
                                  style: TextStyle(fontSize: 20)),
                            ))),
                    onTap: () {
                      setState(() {
                        if (isXplayer) {
                          XO[i] = 'X';
                          isXplayer = false;
                        } else {
                          XO[i] = 'O';
                          isXplayer = true;
                        }
                        controlRow();
                        controlColumn();
                        controlCross();
                      });
                    },
                  ),
                ),
            ],
          ),
        ],
      ),
    ));
  }
}
