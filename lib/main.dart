import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        color: Colors.red,
        padding: const EdgeInsets.all(10),
        child: Container(
          color: Colors.blue,
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
