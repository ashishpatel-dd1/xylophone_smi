import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyXylophoneApp());
}

class MyXylophoneApp extends StatelessWidget {
  const MyXylophoneApp({super.key});

  Future<void> playSound(int noteNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('audio/note$noteNumber.wav'));
  }

  // void BuildKey(){
  //
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red, // Xylophone key color
                      padding: EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 32.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      shadowColor: const Color.fromARGB(
                          102, 0, 0, 0), // Equivalent to opacity 0.4
                      elevation: 6.0,
                    ).copyWith(
                      overlayColor: WidgetStateProperty.all(
                        const Color.fromARGB(
                            76, 255, 0, 0), // Equivalent to opacity 0.3
                      ),
                    ),
                    onPressed: () {
                      playSound(1);
                    },
                    child: SizedBox()),
              ),
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.orange, // Xylophone key color
                      padding: EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 32.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      shadowColor: const Color.fromARGB(
                          102, 0, 0, 0), // Equivalent to opacity 0.4
                      elevation: 6.0,
                    ).copyWith(
                      overlayColor: WidgetStateProperty.all(
                        const Color.fromARGB(
                            76, 255, 0, 0), // Equivalent to opacity 0.3
                      ),
                    ),
                    onPressed: () {
                      playSound(2);
                    },
                    child: SizedBox()),
              ),
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.yellow, // Xylophone key color
                      padding: EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 32.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      shadowColor: const Color.fromARGB(
                          102, 0, 0, 0), // Equivalent to opacity 0.4
                      elevation: 6.0,
                    ).copyWith(
                      overlayColor: WidgetStateProperty.all(
                        const Color.fromARGB(
                            76, 255, 0, 0), // Equivalent to opacity 0.3
                      ),
                    ),
                    onPressed: () {
                      playSound(3);
                    },
                    child: SizedBox()),
              ),
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green, // Xylophone key color
                      padding: EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 32.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      shadowColor: const Color.fromARGB(
                          102, 0, 0, 0), // Equivalent to opacity 0.4
                      elevation: 6.0,
                    ).copyWith(
                      overlayColor: WidgetStateProperty.all(
                        const Color.fromARGB(
                            76, 255, 0, 0), // Equivalent to opacity 0.3
                      ),
                    ),
                    onPressed: () {
                      playSound(4);
                    },
                    child: SizedBox()),
              ),
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue, // Xylophone key color
                      padding: EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 32.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      shadowColor: const Color.fromARGB(
                          102, 0, 0, 0), // Equivalent to opacity 0.4
                      elevation: 6.0,
                    ).copyWith(
                      overlayColor: WidgetStateProperty.all(
                        const Color.fromARGB(
                            76, 255, 0, 0), // Equivalent to opacity 0.3
                      ),
                    ),
                    onPressed: () {
                      playSound(5);
                    },
                    child: SizedBox()),
              ),
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.indigo, // Xylophone key color
                      padding: EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 32.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      shadowColor: const Color.fromARGB(
                          102, 0, 0, 0), // Equivalent to opacity 0.4
                      elevation: 6.0,
                    ).copyWith(
                      overlayColor: WidgetStateProperty.all(
                        const Color.fromARGB(
                            76, 255, 0, 0), // Equivalent to opacity 0.3
                      ),
                    ),
                    onPressed: () {
                      playSound(6);
                    },
                    child: SizedBox()),
              ),
              Expanded(
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.purple, // Xylophone key color
                      padding: EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 32.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      shadowColor: const Color.fromARGB(
                          102, 0, 0, 0), // Equivalent to opacity 0.4
                      elevation: 6.0,
                    ).copyWith(
                      overlayColor: WidgetStateProperty.all(
                        const Color.fromARGB(
                            76, 255, 0, 0), // Equivalent to opacity 0.3
                      ),
                    ),
                    onPressed: () {
                      playSound(7);
                    },
                    child: SizedBox( )),
              )
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
