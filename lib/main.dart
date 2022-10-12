import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Roll Dice'),
          centerTitle: true,
          backgroundColor: Colors.teal[700],
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
  int left=1;
  int right=1;
  @override
  void roll(){
    setState(() {
      left=Random().nextInt(6)+1;
      right=Random().nextInt(6)+1;
    });
  }
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: TextButton(onPressed: (){
            roll();
          },
              child: Image.asset('images/dice$left.png')),
          ),
          Expanded(child: TextButton(onPressed: (){
            roll();
          },
              child: Image.asset('images/dice$right.png')),
          ),
        ],
      ),
    );
  }
}



