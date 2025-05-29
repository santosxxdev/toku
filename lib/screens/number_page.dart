import 'package:flutter/material.dart';
import '../components/item_list.dart';
import '../models/toku_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<TokuModels> numbers = const [
    TokuModels(
      imageToku: 'assets/images/numbers/number_one.png',
      jpName: 'Ichi',
      enName: 'One',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    TokuModels(
      imageToku: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      enName: 'Two',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    TokuModels(
      imageToku: 'assets/images/numbers/number_three.png',
      jpName: 'San',
      enName: 'Three',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    TokuModels(
      imageToku: 'assets/images/numbers/number_four.png',
      jpName: 'Yon',
      enName: 'Four',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    TokuModels(
      imageToku: 'assets/images/numbers/number_five.png',
      jpName: 'Go',
      enName: 'Five',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    TokuModels(
      imageToku: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      enName: 'Six',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    TokuModels(
      imageToku: 'assets/images/numbers/number_seven.png',
      jpName: 'Nana',
      enName: 'Seven',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    TokuModels(
      imageToku: 'assets/images/numbers/number_eight.png',
      jpName: 'Hachi',
      enName: 'Eight',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    TokuModels(
      imageToku: 'assets/images/numbers/number_nine.png',
      jpName: 'Kyū',
      enName: 'Nine',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    TokuModels(
      imageToku: 'assets/images/numbers/number_ten.png',
      jpName: 'Jū',
      enName: 'Ten',
      sound: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF46322B),
          leading: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Text(
            'Numbers',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return ItemList(tokuModels: numbers[index], colorbg: Colors.orange,);
          },
        ));
  }

// List<Widget> gitList(List<NumbersToku> numbers){
//   List<Widget> itemsList = [];
//   for(int i = 0; i< numbers.length; i++){
//     itemsList.add(ItemNumbers(number: numbers[i]));
//   }
//
//   return itemsList;
// }
}
