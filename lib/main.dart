import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

   void playSounds(int  sounds){
     final player=AudioCache();
     player.play('note$sounds.wav');


   }

   Expanded buildKey({Color colors, int  soundsNumber}){

     return Expanded(
       child: FlatButton( color: colors, onPressed: () {

 playSounds(soundsNumber);
       },),
     );
   }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          
          child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              buildKey(colors: Colors.white,soundsNumber: 1),
              buildKey(colors: Colors.green,soundsNumber: 2)
              ,buildKey(colors: Colors.orange,soundsNumber:3)
              ,buildKey(colors: Colors.blue,soundsNumber: 4)
              ,buildKey(colors: Colors.yellow,soundsNumber: 5),
              buildKey(colors: Colors.brown,soundsNumber: 6),
              buildKey(colors: Colors.pinkAccent,soundsNumber: 7)


            ],
          )
              
        ),
      ),
    );
  }
}
