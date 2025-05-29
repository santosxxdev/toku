import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/toku_model.dart';

class ItemList extends StatelessWidget {
  final Color colorbg;
  final TokuModels tokuModels;

  const ItemList({super.key, required this.tokuModels, required this.colorbg});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorbg,
      child: Row(
        children: [
          Container(
            height: 100,
              color: Color(0xFFFEF6DB),
              child: Image.asset(tokuModels.imageToku)),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tokuModels.jpName,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Text(
                  tokuModels.enName,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(tokuModels.sound));
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
