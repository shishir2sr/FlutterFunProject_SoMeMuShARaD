import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Brothers());

class Brothers extends StatelessWidget {
  static AudioCache player = AudioCache();
  const Brothers({Key key}) : super(key: key);

  Expanded playSound(String clr, int sndNum) {
    return Expanded(
      child: FlatButton(
          color: Hexcolor(clr),
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[           
            playSound('#4815AA', 1),
            playSound('#0000FF', 2),
            playSound('#3783FF', 3),
            playSound('#4DE94C', 4),
            playSound('#FFEE00', 5),
            playSound('#FF8C00', 6),
            playSound('#F60000', 7),
            
          ],
        )),
      ),
    );
  }
}
