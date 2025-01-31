import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyXylophoneApp());

class MyXylophoneApp extends StatelessWidget {
  const MyXylophoneApp({super.key});

  Future<void> playSound(int noteNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('audio/note$noteNumber.wav'));
  }

  Expanded buildKey({required MaterialColor keyColor, required int keyNumber}) {
    return Expanded(
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: keyColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          onPressed: () {
            playSound(keyNumber);
          },
          child: SizedBox()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(keyColor: Colors.red, keyNumber: 1),
              buildKey(keyColor: Colors.orange, keyNumber: 2),
              buildKey(keyColor: Colors.yellow, keyNumber: 3),
              buildKey(keyColor: Colors.green, keyNumber: 4),
              buildKey(keyColor: Colors.blue, keyNumber: 5),
              buildKey(keyColor: Colors.indigo, keyNumber: 6),
              buildKey(keyColor: Colors.deepPurple, keyNumber: 7)
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }
}
