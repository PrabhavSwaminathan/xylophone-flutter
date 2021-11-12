import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void soundBar(int soundNote) {
    final player = AudioCache();
    player.play('note$soundNote.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Xylophone'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              CustomSoundButton(
                onPressed: () {
                  soundBar(1);
                },
                color: Colors.purple,
              ),
              // ElevatedButton(
              //   style: ButtonStyle(
              //     backgroundColor:
              //         MaterialStateProperty.all<Color>(Colors.purple),
              //   ),
              //   onPressed: () {
              //     soundBar(1);
              //   },
              //   child: const Text(''),
              // ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.orange),
                ),
                onPressed: () {
                  soundBar(2);
                },
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                onPressed: () {
                  soundBar(3);
                },
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey),
                ),
                onPressed: () {
                  soundBar(4);
                },
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.pinkAccent),
                ),
                onPressed: () {
                  soundBar(5);
                },
                child: const Text(''),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.limeAccent),
                ),
                onPressed: () {
                  soundBar(6);
                },
                child: const Text(''),
              ),
              ElevatedButton(
                onPressed: () {
                  soundBar(7);
                },
                child: const Text(''),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomSoundButton extends StatelessWidget {
  const CustomSoundButton(
      {Key? key, required this.onPressed, required this.color})
      : super(key: key);

  final onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
      ),
      onPressed: onPressed,
      child: const Text(''),
    );
  }
}
