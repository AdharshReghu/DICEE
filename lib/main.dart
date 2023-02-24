import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
              child: Text(
            'DICEE',
          )),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftdiceno = 1;
  var rightdiceno = 1;
  var value = "ODD OR EVEN";
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        leftdiceno = Random().nextInt(6) + 1;
                        if ((leftdiceno + rightdiceno) % 2 == 0) {
                          setState(() {
                            value = "EVEN";
                          });
                        } else {
                          value = "ODD";
                        }
                      });
                    },
                    child: Image.asset('images/dice$leftdiceno.png'))),
            Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        rightdiceno = Random().nextInt(6) + 1;
                        if ((leftdiceno + rightdiceno) % 2 == 0) {
                          setState(() {
                            value = "EVEN";
                          });
                        } else {
                          value = "ODD";
                        }
                      });
                    },
                    child: Image.asset('images/dice$rightdiceno.png'))),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "RESULT : $value",
          style: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
        )
      ],
    );
  }
}
