import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Numeros extends StatefulWidget {
  @override
  _NumerosState createState() => _NumerosState();
}

class _NumerosState extends State<Numeros> {
  var player = AudioPlayer();

  _executar(String nomeAudio) async {
    await player.play(AssetSource('audios/' + nomeAudio));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      //scrollDirection: Axis.vertical,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            _executar("1.mp3");
          },
          child: Image.asset("assets/images/1.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("2.mp3");
          },
          child: Image.asset("assets/images/2.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("3.mp3");
          },
          child: Image.asset("assets/images/3.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("4.mp3");
          },
          child: Image.asset("assets/images/4.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("5.mp3");
          },
          child: Image.asset("assets/images/5.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("6.mp3");
          },
          child: Image.asset("assets/images/6.png"),
        ),
      ],
    );
  }
}
