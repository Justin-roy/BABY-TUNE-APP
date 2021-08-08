import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MusicApp());
}

class MusicApp extends StatefulWidget {
  const MusicApp({Key? key}) : super(key: key);

  @override
  _MusicAppState createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
  late int sno;
  void playSound(int s) {
    final player = AudioCache();
    player.play('assets_note$s.wav');
  }

  TextButton boxShape({required Color color1, required Color color2, sno}) {
    return TextButton(
        onPressed: () {
          playSound(sno);
        },
        child: Container(
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                colors: [color1, color2],
              )),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                boxShape(
                    color1: Colors.purpleAccent, color2: Colors.red, sno: 1),
                boxShape(color1: Colors.grey, color2: Colors.black, sno: 2),
                boxShape(
                    color1: Colors.green, color2: Colors.greenAccent, sno: 3),
                boxShape(
                    color1: Colors.blue, color2: Colors.blueAccent, sno: 4),
                boxShape(
                    color1: Colors.purple, color2: Colors.purpleAccent, sno: 5),
                boxShape(color1: Colors.grey, color2: Colors.blueGrey, sno: 6),
                boxShape(
                    color1: Colors.yellow, color2: Colors.yellowAccent, sno: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
