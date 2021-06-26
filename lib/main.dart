import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text(
            'Dice Number',
            style: TextStyle(
              fontFamily: "Pacifico",
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),
          ),
          backgroundColor: Colors.teal,
        ),
        body: Center(
            child: DicePage()
        ),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State {
  int diceNumber11 = 1;
  int diceNumber12 = 1;
  int diceNumber21 = 1;
  int diceNumber22 = 1;
  int diceNumber31 = 1;
  int diceNumber32 = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children:[
        Card(
          margin: EdgeInsets.symmetric(
              vertical: 15.0,
              horizontal: 10.0
          ),
          child: ListTile(
            leading: Icon(
                Icons.favorite,
                color: Colors.pink
            ),
            title: Text(
              "If you press the dice, the value changes randomly",
              style: TextStyle(
                  fontFamily: "Pacifico",
                  fontSize: 15,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: FlatButton(
                    onPressed: (){
                      setState(() {
                        diceNumber11 = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('images/dice$diceNumber11.png')
                )
            ),
            Expanded(
                flex: 1,
                child: FlatButton(
                    onPressed: (){
                      setState(() {
                        diceNumber12 = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('images/dice$diceNumber12.png')
                )
            )
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: FlatButton(
                    onPressed: (){
                      setState(() {
                        diceNumber21 = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('images/dice$diceNumber21.png')
                )
            ),
            Expanded(
                flex: 1,
                child: FlatButton(
                    onPressed: (){
                      setState(() {
                        diceNumber22 = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('images/dice$diceNumber22.png')
                )
            )
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: FlatButton(
                    onPressed: (){
                      setState(() {
                        diceNumber31 = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('images/dice$diceNumber31.png')
                )
            ),
            Expanded(
                flex: 1,
                child: FlatButton(
                    onPressed: (){
                      setState(() {
                        diceNumber32 = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('images/dice$diceNumber32.png')
                )
            )
          ],
        )
      ]
    );
  }
}
