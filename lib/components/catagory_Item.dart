import 'package:flutter/material.dart';

class CatagoryItem extends StatelessWidget {
  String nameCatagory;
  Color colorCatagory;
  Function clickTab;

  CatagoryItem({required this.nameCatagory,required this.colorCatagory, required this.clickTab, });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: (){
       clickTab();
     },
      child: Container(
        padding: EdgeInsets.only(left: 16),
        alignment: Alignment.centerLeft,
        color: colorCatagory,
        height: 60,
        width: double.infinity,
        child: Text(
          nameCatagory,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
