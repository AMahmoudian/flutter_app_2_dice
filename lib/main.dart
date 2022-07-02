import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Dice',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black54,
          ),
        ),
      ),
      body: MyApp(),
    ),
  ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     int leftDice = 1;
//     int rightDice = 1;
//     return Center(
//       child: Row(
//         children: [
//           Expanded(
//             child: FlatButton(
//               onPressed: () {
//                 leftDice += 1;
//                 print(leftDice);
//               },
//               child: Image(
//                 image: AssetImage('images/dice-six-faces-${leftDice}.png'),
//               ),
//             ),
//           ),
//           Expanded(
//             child: FlatButton(
//               onPressed: () {
//                 rightDice += 1;
//                 print(rightDice);
//               },
//               child: Image(
//                 image: AssetImage('images/dice-six-faces-${rightDice}.png'),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDice = 1;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDice = Random().nextInt(6) + 1;
                });
                print(leftDice);
              },
              child: Image(
                image: AssetImage('images/dice-six-faces-${leftDice}.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightDice = Random().nextInt(6) + 1;
                });
                print(rightDice);
              },
              child: Image(
                image: AssetImage('images/dice-six-faces-${rightDice}.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
