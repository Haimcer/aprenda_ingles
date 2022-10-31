import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Bichos extends StatefulWidget {
  @override
  _BichosState createState() => _BichosState();
}

class _BichosState extends State<Bichos> {
  var player = AudioPlayer();

  _executar(String nomeAudio) async {
    await player.play(AssetSource('audios/' + nomeAudio));
  }

  @override
  Widget build(BuildContext context) {
    //double largura = MediaQuery.of(context).size.width;
    //double altura = MediaQuery.of(context).size.height;

    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      //scrollDirection: Axis.vertical,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            _executar("cao.mp3");
          },
          child: Image.asset("assets/images/cao.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("gato.mp3");
          },
          child: Image.asset("assets/images/gato.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("leao.mp3");
          },
          child: Image.asset("assets/images/leao.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("macaco.mp3");
          },
          child: Image.asset("assets/images/macaco.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("ovelha.mp3");
          },
          child: Image.asset("assets/images/ovelha.png"),
        ),
        GestureDetector(
          onTap: () {
            _executar("vaca.mp3");
          },
          child: Image.asset("assets/images/vaca.png"),
        ),
      ],
    );
  }
}
