import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Brothers());

class Brothers extends StatelessWidget {
  static AudioCache player = AudioCache();
  const Brothers({Key key}) : super(key: key);

  Expanded playSound(Color clr, int sndNum) {
    return Expanded(
      child: FlatButton(
          color: clr,
          onPressed: () {
            player.play('$sndNum.mpeg');
            //print('button pressed');
          },
          child: null),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[700],
          title: Center(child: Text('SoMeMuShARaD')),
        ),
        body: SafeArea(
            child: Column(
          children: <Widget>[           
            playSound(Colors.black, 1),
            playSound(Colors.green, 2),
            playSound(Colors.yellow, 3),
            playSound(Colors.green, 4),
            playSound(Colors.green, 5),
            playSound(Colors.green, 6),
            playSound(Colors.green, 7),
            
          ],
        )),
      ),
    );
  }
}
