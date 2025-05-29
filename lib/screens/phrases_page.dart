import 'package:flutter/material.dart';

import '../components/item_phrases.dart';
import '../models/toku_phrases.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<PharsesModel> phrases = const [
    PharsesModel(
      enName: 'Are you coming?',
      jpName: '来ますか？ (Kimasu ka?)',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    PharsesModel(
      enName: 'Don\'t forget to subscribe',
      jpName: '登録するのを忘れないで (Tōroku suru no o wasurenaide)',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    PharsesModel(
      enName: 'How are you feeling?',
      jpName: '気分はどう？ (Kibun wa dō?)',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    PharsesModel(
      enName: 'I love anime',
      jpName: 'アニメが大好き (Anime ga daisuki)',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    PharsesModel(
      enName: 'I love programming',
      jpName: 'プログラミングが大好き (Puroguramingu ga daisuki)',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    PharsesModel(
      enName: 'Programming is easy',
      jpName: 'プログラミングは簡単です (Puroguramingu wa kantan desu)',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    PharsesModel(
      enName: 'What is your name?',
      jpName: 'あなたの名前は何ですか？ (Anata no namae wa nan desu ka?)',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    PharsesModel(
      enName: 'Where are you going?',
      jpName: 'どこに行くの？ (Doko ni iku no?)',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    PharsesModel(
      enName: 'Yes, I\'m coming',
      jpName: 'はい、行きます (Hai, ikimasu)',
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Phrases',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
        return ItemPhrases(pharsesModel: phrases[index]);
      },),
    );
  }
}
