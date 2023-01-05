import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int number) {
    final assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(
      Audio(
        "assets/normal.wav",
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Expanded buildKey(Color color, int number, Widget Icon) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
          color: color,
          onPressed: () {
            playSound(number);
          },
          child: Icon,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var color2 = const Color.fromARGB(
      255,
      4,
      50,
      90,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(
            255,
            7,
            13,
            24,
          ),
          title: const Text(
            'BeatBox',
          ),
          leading: const Icon(
            Icons.menu_book,
          ),
          actions: const [
            Icon(
              Icons.account_circle,
            )
          ],
        ),
        backgroundColor: const Color.fromARGB(
          255,
          80,
          79,
          79,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(
                  const Color.fromARGB(
                    255,
                    1,
                    15,
                    37,
                  ),
                  1,
                  const Icon(
                    Icons.currency_rupee,
                    color: Colors.white,
                  )),
              buildKey(
                  const Color.fromARGB(
                    255,
                    3,
                    28,
                    58,
                  ),
                  2,
                  const Icon(
                    Icons.brightness_3,
                    color: Colors.white,
                  )),
              buildKey(
                  const Color.fromARGB(
                    255,
                    1,
                    40,
                    78,
                  ),
                  3,
                  const Icon(
                    Icons.looks,
                    color: Colors.white,
                  )),
              buildKey(
                  color2,
                  4,
                  const Icon(
                    Icons.opacity,
                    color: Colors.white,
                  )),
              buildKey(
                  const Color.fromARGB(
                    255,
                    4,
                    54,
                    95,
                  ),
                  5,
                  const Icon(
                    Icons.auto_awesome,
                    color: Colors.white,
                  )),
              buildKey(
                  const Color.fromARGB(
                    255,
                    3,
                    66,
                    117,
                  ),
                  6,
                  const Icon(
                    Icons.gesture,
                    color: Colors.white,
                  )),
              buildKey(
                  const Color.fromARGB(
                    255,
                    7,
                    69,
                    119,
                  ),
                  7,
                  const Icon(
                    Icons.bedtime,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
