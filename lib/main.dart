import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(int soundNumber, Color color){
    return Expanded(
      child: Container(
        color: color,
        width: double.infinity,
        child: TextButton(
          onPressed: (){
            playSound(soundNumber);
          },
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              buildKey(1, Colors.redAccent),
              buildKey(2, Colors.deepOrangeAccent),
              buildKey(3, Colors.yellowAccent),
              buildKey(4, Colors.greenAccent),
              buildKey(5, Colors.tealAccent),
              buildKey(6, Colors.blueAccent),
              buildKey(7, Colors.deepPurpleAccent),
            ],
          ),
        ),
      ),
    );
  }
}
