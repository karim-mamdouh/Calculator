// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Calculator App'),
          centerTitle: true),
      body: Container(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(decoration: InputDecoration(label: Text('0'))),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                CalculatorButton('C'),
                SizedBox(
                  width: 10,
                ),
                CalculatorButton('/'),
                SizedBox(
                  width: 10,
                ),
                CalculatorButton('X'),
                SizedBox(
                  width: 10,
                ),
                CalculatorButton('AC')
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                CalculatorButton('7'),
                SizedBox(
                  width: 10,
                ),
                CalculatorButton('8'),
                SizedBox(
                  width: 10,
                ),
                CalculatorButton('9'),
                SizedBox(
                  width: 10,
                ),
                CalculatorButton('-')
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                CalculatorButton('4'),
                SizedBox(
                  width: 10,
                ),
                CalculatorButton('5'),
                SizedBox(
                  width: 10,
                ),
                CalculatorButton('6'),
                SizedBox(
                  width: 10,
                ),
                CalculatorButton('+')
              ],
            ),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          CalculatorButton('1'),
                          SizedBox(
                            width: 10,
                          ),
                          CalculatorButton('2'),
                          SizedBox(
                            width: 10,
                          ),
                          CalculatorButton('3'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          CalculatorButton(
                            '0',
                            flex: 2,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CalculatorButton(','),
                        ],
                      ),
                    )
                  ]),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3, right: 10, top: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 160,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Center(
                              child: Text('=',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                            ),
                          ),
                        ),
                        // Expanded(
                        //     child: Row(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [CalculatorButton('=')],
                        // ))
                      ],
                    ),
                  ))
            ]),
          )
        ]),
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String _buttonText;
  final int flex;
  CalculatorButton(this._buttonText, {this.flex = 1});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: this.flex,
      child: Container(
        height: 70,
        child: ElevatedButton(
          onPressed: () {},
          child: Center(
            child: Text(_buttonText,
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
        ),
      ),
    );
  }
}
