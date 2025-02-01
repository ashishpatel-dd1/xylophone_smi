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
    await _player
        .play(AssetSource('audio/note$noteNumber.wav')); // Play new sound
  }

  Widget buildKeys() {
    final List<Color> keyColors = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.blue,
      Colors.indigo,
      Colors.deepPurple
    ];

    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: List.generate(
            keyColors.length,
            (index) => Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: keyColors[index],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    onPressed: () => playSound(index + 1),
                    child: const SizedBox.shrink(),
                  ),
                )));
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
      body: SafeArea(child: buildKeys()),
    );
  }
}
