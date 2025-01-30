import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyXylophoneApp());
}

class MyXylophoneApp extends StatelessWidget {
  const MyXylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                color: Colors.red,
                width: 200,
                height: 100,
                child: TextButton(onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource('audio/note1.wav'));
                }, child: Center(child: Text('note1'))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                color: Colors.orange,
                width: 200,
                height: 100,
                child: TextButton(onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource('audio/note2.wav'));
                }, child: Center(child: Text('note2'))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                color: Colors.yellow,
                width: 200,
                height: 100,
                child: TextButton(onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource('audio/note3.wav'));
                }, child: Center(child: Text('note3'))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                color: Colors.green,
                width: 200,
                height: 100,
                child: TextButton(onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource('audio/note4.wav'));
                }, child: Center(child: Text('note4'))),
              ),
            ),Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                color: Colors.blue,
                width: 200,
                height: 100,
                child: TextButton(onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource('audio/note5.wav'));
                }, child: Center(child: Text('note5'))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                color: Colors.indigo,
                width: 200,
                height: 100,
                child: TextButton(onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource('audio/note6.wav'));
                }, child: Center(child: Text('note6'))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                color: Colors.purple,
                width: 200,
                height: 100,
                child: TextButton(onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource('audio/note7.wav'));
                }, child: Center(child: Text('note7'))),
              ),
            )
          ],
        ),),
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
