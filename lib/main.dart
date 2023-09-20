import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red.shade700,
        appBar: AppBar(
          title: Center(
            child:Text('Roll the dice'),
          ),
          backgroundColor: Colors.red.shade900,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdice = 1;
  int rightdice = 2;

  void keypressed() {
    setState(() {
      leftdice = Random().nextInt(6) + 1;
      rightdice = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
              ),
              onPressed: () {
               keypressed();
              },
              child:Image.asset('images/dice$leftdice.png'),
            ),

          ),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
              ),
              onPressed: () {
                keypressed();
              },
              child:Image.asset('images/dice$rightdice.png'),
            ),

          ),
        ],
      ),
    );
  }
}

// class DicePage extends StatelessWidget {
  // @override
  // Widget build(BuildContext context) {
  //   return Center(
  //     child: Row(
  //       children: <Widget>[
  //         Expanded(
  //           child: TextButton(
  //             style: ButtonStyle(
  //               foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
  //             ),
  //             onPressed: () {
  //               print('left');
  //             },
  //             child:Image.asset('images/dice1.png'),
  //           ),
  //
  //         ),
  //         Expanded(
  //           child: TextButton(
  //             style: ButtonStyle(
  //               foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
  //             ),
  //             onPressed: () {
  //               print("right");
  //             },
  //             child:Image.asset('images/dice2.png'),
  //           ),
  //
  //         ),
  //       ],
  //     ),
  //   );
  // }
// }
