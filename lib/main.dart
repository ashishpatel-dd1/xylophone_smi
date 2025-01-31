import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyXylophoneApp());

class MyXylophoneApp extends StatelessWidget {
  const MyXylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: XylophoneScreen(),
    );
  }
}

class XylophoneScreen extends StatefulWidget {
  const XylophoneScreen({super.key});

  @override
  State<XylophoneScreen> createState() => _XylophoneScreenState();
}

class _XylophoneScreenState extends State<XylophoneScreen> {
  final AudioPlayer _player = AudioPlayer(); // Persistent instance

  Future<void> playSound(int noteNumber) async {
    await _player.stop(); // Stop previous sound if playing
    await _player.play(AssetSource('audio/note$noteNumber.wav')); // Play new sound
  }

  Expanded buildKey({required Color keyColor, required int keyNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: keyColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        onPressed: () => playSound(keyNumber),
        child: const SizedBox.shrink(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            buildKey(keyColor: Colors.purple, keyNumber: 7),
          ],
        ),
      ),
    );
  }
}
