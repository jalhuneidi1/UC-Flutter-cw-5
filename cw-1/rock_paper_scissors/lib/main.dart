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
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
