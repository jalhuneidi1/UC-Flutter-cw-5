import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RPS(),
    );
  }
}

class RPS extends StatefulWidget {
  const RPS({super.key});

  @override
  State<RPS> createState() => _RPSState();
}

class _RPSState extends State<RPS> {
  int player1 = 1;
  int player2 = 2;
  String? results;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "Rock, Paper, Scissors",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/i_$player1.png',
                      height: 100,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        "Player 1",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 75,
              ),
              Container(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/i_$player2.png',
                      height: 100,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        "Player 2",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 75, width: 100),
          Container(
            width: 150,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () {
                setState(
                  () {
                    player1 = Random().nextInt(3) + 1;
                    player2 = Random().nextInt(3) + 1;

                    results = player1 > player2
                        ? "Player 1 wins!"
                        : player2 > player1
                            ? "Player 2 wins!"
                            : "It's a draw. Play again.";
                  },
                );
              },
              child: Text(
                "Play",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text("$results", style: TextStyle(fontSize: 30)),
            ),
          ),
        ],
      ),
    );
  }
}
