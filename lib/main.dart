import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: const [
          RiveAnimation.asset(
            "assets/dash.riv",
            artboard: "space",
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
          RiveAnimation.asset("assets/dash.riv"),
          Positioned(
              top: 10,
              child: Text(
                "Vikings Dash meet a new friend",
                style: TextStyle(
                    fontFamily: 'Caesar Dressing',
                    fontSize: 40,
                    color: Colors.white),
              )),
        ],
      ),
    );
  }
}
