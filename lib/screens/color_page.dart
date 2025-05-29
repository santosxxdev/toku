import 'package:flutter/material.dart';
import 'package:toku/components/item_list.dart';
import 'package:toku/models/toku_model.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});

  final List<TokuModels> colors = const [
    TokuModels(
      enName: 'Black',
      jpName: '黒 (Kuro)',
      imageToku: 'assets/images/colors/color_black.png',
      sound: 'sounds/colors/black.wav',
    ),
    TokuModels(
      enName: 'Brown',
      jpName: '茶色 (Chairo)',
      imageToku: 'assets/images/colors/color_brown.png',
      sound: 'sounds/colors/brown.wav',
    ),
    TokuModels(
      enName: 'Gray',
      jpName: '灰色 (Haiiro)',
      imageToku: 'assets/images/colors/color_gray.png',
      sound: 'sounds/colors/gray.wav',
    ),
    TokuModels(
      enName: 'Dusty Yellow',
      jpName: 'くすんだ黄色 (Kusunda Kiiro)',
      imageToku: 'assets/images/colors/color_dusty_yellow.png',
      sound: 'sounds/colors/dusty yellow.wav',
    ),
    TokuModels(
      enName: 'Green',
      jpName: '緑 (Midori)',
      imageToku: 'assets/images/colors/color_green.png',
      sound: 'sounds/colors/green.wav',
    ),
    TokuModels(
      enName: 'Red',
      jpName: '赤 (Aka)',
      imageToku: 'assets/images/colors/color_red.png',
      sound: 'sounds/colors/red.wav',
    ),
    TokuModels(
      enName: 'White',
      jpName: '白 (Shiro)',
      imageToku: 'assets/images/colors/color_white.png',
      sound: 'sounds/colors/white.wav',
    ),
    TokuModels(
      enName: 'Yellow',
      jpName: '黄色 (Kiiro)',
      imageToku: 'assets/images/colors/yellow.png',
      sound: 'sounds/colors/yellow.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.brown,
        title: Text('Color',style: TextStyle(
          color: Colors.white,
        ),),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ItemList(tokuModels: colors[index], colorbg: Colors.deepPurpleAccent);
        },
      ),
    );
  }
}
