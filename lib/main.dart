import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNo) {
    final player = AudioPlayer();
    player.setSource(AssetSource('note$soundNo.wav'));
    player.resume();
  }

  Expanded addMusicButton(Color color, int soundNo) {
    return Expanded(
      child: FloatingActionButton(
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: color,
        onPressed: () {
          playSound(soundNo);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple.shade300,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(child: Text("Xylophone App")),
        ),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  addMusicButton(Colors.red, 1),
                  const SizedBox(
                    height: 10,
                  ),
                  addMusicButton(Colors.purple, 2),
                  const SizedBox(
                    height: 10,
                  ),
                  addMusicButton(Colors.blue, 3),
                  const SizedBox(
                    height: 10,
                  ),
                  addMusicButton(Colors.green, 4),
                  const SizedBox(
                    height: 10,
                  ),
                  addMusicButton(Colors.deepOrange, 5),
                  const SizedBox(
                    height: 10,
                  ),
                  addMusicButton(Colors.yellow, 6),
                  const SizedBox(
                    height: 10,
                  ),
                  addMusicButton(Colors.orange, 1),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
