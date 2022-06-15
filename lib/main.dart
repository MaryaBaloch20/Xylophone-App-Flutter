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
            child: TextButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.setSource(AssetSource('note2.wav'));
                  player.resume();
                },
                child: const Text('Click me!')),
          ),
        ),
      ),
    );
  }
}
