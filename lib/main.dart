import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Xylophone(),
    );
  }
}

class Xylophone extends StatefulWidget {
  const Xylophone({super.key});

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          tapped(Colors.red, 1),
          tapped(Colors.orangeAccent, 2),
          tapped(Colors.yellow, 3),
          tapped(Colors.green, 4),
          tapped(Colors.blue, 5),
          tapped(Colors.purpleAccent, 6),
          tapped(Colors.teal, 7),
        ],
      ),
    );
  }

  Expanded tapped(Color? color, int? san) {
    return Expanded(
      child: InkWell(
          onTap: () {
            AssetsAudioPlayer.newPlayer().open(
              Audio("assets/assets_note$san.wav"),
              autoStart: true,
              showNotification: true,
            );
          },
          child: Container(
            color: color,
          )),
    );
  }
}
