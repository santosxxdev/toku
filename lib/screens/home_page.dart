import 'package:flutter/material.dart';
import 'package:toku/screens/color_page.dart';
import 'package:toku/screens/family_page.dart';
import 'package:toku/screens/phrases_page.dart';

import '../components/catagory_Item.dart';
import 'number_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xFF46322B),
        title: Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          CatagoryItem(
            nameCatagory: 'Numbers',
            colorCatagory: Colors.orange,
            clickTab: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NumbersPage();
                  },
                ),
              );
            },
          ),
          CatagoryItem(
            nameCatagory: 'Family Members',
            colorCatagory: Colors.green,
            clickTab: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => FamilyPage()));
            },
          ),
          CatagoryItem(
            nameCatagory: 'Colors',
            colorCatagory: Colors.deepPurpleAccent,
            clickTab: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ColorPage(),));
            },
          ),
          CatagoryItem(
            nameCatagory: 'Phrases',
            colorCatagory: Colors.blue,
            clickTab: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PhrasesPage(),));

            },
          ),
        ],
      ),
    );
  }
}
