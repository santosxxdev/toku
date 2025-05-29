import 'package:flutter/material.dart';

import '../components/item_list.dart';
import '../models/toku_model.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

  final List<TokuModels> familyMembers = const [
    TokuModels(
      enName: 'Daughter',
      jpName: '娘 (Musume)',
      imageToku: 'assets/images/family_members/family_daughter.png',
      sound: 'sounds/family_members/daughter.wav',
    ),
    TokuModels(
      enName: 'Father',
      jpName: 'お父さん (Otōsan)',
      imageToku: 'assets/images/family_members/family_father.png',
      sound: 'sounds/family_members/father.wav',
    ),
    TokuModels(
      enName: 'Grandfather',
      jpName: 'おじいさん (Ojīsan)',
      imageToku: 'assets/images/family_members/family_grandfather.png',
      sound: 'sounds/family_members/grand father.wav',
    ),
    TokuModels(
      enName: 'Grandmother',
      jpName: 'おばあさん (Obāsan)',
      imageToku: 'assets/images/family_members/family_grandmother.png',
      sound: 'sounds/family_members/grand mother.wav',
    ),
    TokuModels(
      enName: 'Mother',
      jpName: 'お母さん (Okāsan)',
      imageToku: 'assets/images/family_members/family_mother.png',
      sound: 'sounds/family_members/mother.wav',
    ),
    TokuModels(
      enName: 'Older Brother',
      jpName: 'お兄さん (Onīsan)',
      imageToku: 'assets/images/family_members/family_older_brother.png',
      sound: 'sounds/family_members/older bother.wav',
    ),
    TokuModels(
      enName: 'Older Sister',
      jpName: 'お姉さん (Onēsan)',
      imageToku: 'assets/images/family_members/family_older_sister.png',
      sound: 'sounds/family_members/older sister.wav',
    ),
    TokuModels(
      enName: 'Son',
      jpName: '息子 (Musuko)',
      imageToku: 'assets/images/family_members/family_son.png',
      sound: 'sounds/family_members/son.wav',
    ),
    TokuModels(
      enName: 'Younger Brother',
      jpName: '弟 (Otōto)',
      imageToku: 'assets/images/family_members/family_younger_brother.png',
      sound: 'sounds/family_members/younger brohter.wav',
    ),
    TokuModels(
      enName: 'Younger Sister',
      jpName: '妹 (Imōto)',
      imageToku: 'assets/images/family_members/family_younger_sister.png',
      sound: 'sounds/family_members/younger sister.wav',
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
        title: Text('Family Members',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
        return ItemList(tokuModels: familyMembers[index], colorbg: Colors.green ,);
      },),
    );
  }
}
