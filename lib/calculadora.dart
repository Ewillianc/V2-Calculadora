// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({Key? key}) : super(key: key);
  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  Widget numButton(String btnText, Color btnColor, Color txtColor) {
    return Container(
      height: 100,
      width: 150,
      decoration: BoxDecoration(
        color: btnColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: GestureDetector(
          onTap: () {
            print('click');
          },
          child: Text(
            btnText,
            style: TextStyle(fontSize: 50, color: txtColor),
          ),
        ),
      ),
    );
    /* ElevatedButton(
      onPressed: () => {},
      style: ElevatedButton.styleFrom(
          fixedSize: Size(70, 70),
          backgroundColor: btnColor,
          shape: CircleBorder()),
      child: Text(
        btnText,
        style: TextStyle(fontSize: 25, color: txtColor),
      ),
    );*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Center(
            child: Text(
          "V2_Calculadora",
          style: TextStyle(color: Colors.grey[600]),
        )),
        backgroundColor: Colors.grey[900],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "0",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 62, 152),
                        fontSize: 110),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numButton("C", Colors.pink, Colors.black38),
                numButton("+/-", Colors.pink, Colors.black38),
                numButton("%", Colors.pink, Colors.black38),
                numButton(
                    "/", Color.fromARGB(255, 186, 30, 233), Colors.black38),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numButton(
                    "7", Color.fromARGB(123, 233, 30, 98), Colors.black87),
                numButton(
                    "8", Color.fromARGB(123, 233, 30, 98), Colors.black87),
                numButton(
                    "9", Color.fromARGB(123, 233, 30, 98), Colors.black87),
                numButton(
                    "x", Color.fromARGB(255, 186, 30, 233), Colors.black38),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numButton(
                    "4", Color.fromARGB(123, 233, 30, 98), Colors.black87),
                numButton(
                    "5", Color.fromARGB(123, 233, 30, 98), Colors.black87),
                numButton(
                    "6", Color.fromARGB(123, 233, 30, 98), Colors.black87),
                numButton(
                    "-", Color.fromARGB(255, 186, 30, 233), Colors.black38),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numButton(
                    "1", Color.fromARGB(123, 233, 30, 98), Colors.black87),
                numButton(
                    "2", Color.fromARGB(123, 233, 30, 98), Colors.black87),
                numButton(
                    "3", Color.fromARGB(123, 233, 30, 98), Colors.black87),
                numButton(
                    "+", Color.fromARGB(255, 186, 30, 233), Colors.black38),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 340,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        print('click');
                      },
                      child: Text(
                        '0',
                        style: TextStyle(fontSize: 50, color: Colors.black38),
                      ),
                    ),
                  ),
                ),
                numButton('.', Colors.yellow, Colors.black38),
                numButton('=', Colors.yellow, Colors.black38)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
