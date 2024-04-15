import 'package:flutter/material.dart';
import 'package:learn_english/figure.dart';
import 'package:audioplayers/audioplayers.dart';

class AnimalsView extends StatefulWidget {
  const AnimalsView({super.key});

  @override
  State<AnimalsView> createState() => _AnimalsViewState();
}

class _AnimalsViewState extends State<AnimalsView> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  final List<Figure> _figures = [
    Figure(name: 'cao'), Figure(name: 'gato'), Figure(name: 'leao'),
    Figure(name: 'macaco'), Figure(name: 'ovelha'), Figure(name: 'vaca'),
  ];

  Future<void> _playAnimalSound(String name) async {
    if (_audioPlayer.state == PlayerState.playing) {
      await _audioPlayer.stop();
    }

    AssetSource source = AssetSource('$name.mp3');
    await _audioPlayer.play(source);
  }

  @override
  void initState() {
    super.initState();

    _audioPlayer.audioCache.prefix = 'assets/sounds/';

    _audioPlayer.audioCache.loadAll(
      _figures.map((f) => '${f.name}.mp3').toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    double aspectRatio = MediaQuery.of(context).size.aspectRatio;

    return GridView.count(
      crossAxisCount: 2,
      scrollDirection: Axis.vertical,
      childAspectRatio: aspectRatio * 2,
      children: _figures
        .map((f) => GestureDetector(
          onTap: () async => await _playAnimalSound(f.name),
          child: Image.asset('assets/images/${f.name}.png'),
        ))
        .toList(),
    );
  }
}
