import 'package:flutter/material.dart';

void main() {
  runApp(GlobeApp());
}

class GlobeApp extends StatelessWidget {
  const GlobeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Global Fitness')),
            body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/beach.jpg'),
                      fit: BoxFit.cover)),
              child: Center(
                  child: Container(
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white70
                    ),
                    child: Text(
                        'Commit to be fit, dare to be great \nwith Global Fitness',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          shadows: [
                            Shadow(
                              blurRadius: 2.0,
                              color: Colors.grey,
                              offset: Offset(1.0, 1.0),
                            ),
                          ])),
                  )),
            )));
  }
}
