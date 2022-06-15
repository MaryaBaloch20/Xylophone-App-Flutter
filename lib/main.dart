import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  onPressed: () {
                    final player = AudioPlayer();
                    player.setSource(AssetSource('note1.wav'));
                    player.resume();
                  },
                  child: const Text(''),
                ),
                TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.orange)),
                  onPressed: () {
                    final player = AudioPlayer();
                    player.setSource(AssetSource('note2.wav'));
                    player.resume();
                  },
                  child: const Text(''),
                ),
                TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.yellow)),
                  onPressed: () {
                    final player = AudioPlayer();
                    player.setSource(AssetSource('note3.wav'));
                    player.resume();
                  },
                  child: const Text(''),
                ),
                TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: () {
                    final player = AudioPlayer();
                    player.setSource(AssetSource('note4.wav'));
                    player.resume();
                  },
                  child: const Text(''),
                ),
                TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.green.shade900)),
                  onPressed: () {
                    final player = AudioPlayer();
                    player.setSource(AssetSource('note5.wav'));
                    player.resume();
                  },
                  child: const Text(''),
                ),
                TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  onPressed: () {
                    final player = AudioPlayer();
                    player.setSource(AssetSource('note6.wav'));
                    player.resume();
                  },
                  child: const Text(''),
                ),
                TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple)),
                  onPressed: () {
                    final player = AudioPlayer();
                    player.setSource(AssetSource('note7.wav'));
                    player.resume();
                  },
                  child: const Text(''),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
