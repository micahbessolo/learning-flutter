import 'package:flutter/material.dart';

void main() {
  runApp(GlobeApp());  
}

class GlobeApp extends StatelessWidget {
  const GlobeApp({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(child: Text('Hello World')),
    );
  }
}