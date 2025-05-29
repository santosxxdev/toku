import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/toku_phrases.dart';

class ItemPhrases extends StatelessWidget {
  const ItemPhrases({super.key, required this.pharsesModel});

  final PharsesModel pharsesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      height: 120,
      color: Colors.blue,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  pharsesModel.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                  softWrap: true, // النص يلف لسطر جديد عند الحاجة
                ),
                const SizedBox(height: 4), // مسافة بسيطة بين السطرين
                Text(
                  pharsesModel.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                  softWrap: true,
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(pharsesModel.sound));
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
