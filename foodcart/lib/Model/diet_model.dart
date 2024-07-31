import 'package:flutter/material.dart';
import 'package:foodcart/View/screens/widgets/color_palettes.dart';

class DietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calories;
  Color boxColor;
  bool viewIsSelected;

  DietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calories,
    required this.boxColor,
    required this.viewIsSelected,
  });

  static List<DietModel> getDiets() {
    List<DietModel> catagories = [];

    catagories.add(DietModel(
      name: 'Honey Pancake',
      iconPath: 'assets/icons/honey-pancakes.svg',
      level: 'Low',
      duration: '10 min',
      calories: '100',
      boxColor: ColorPalettes.primaryLight,
      viewIsSelected: false,
    ));

    catagories.add(DietModel(
      name: 'Canai Bread',
      iconPath: 'assets/icons/canai-bread.svg',
      level: 'Low',
      duration: '10 min',
      calories: '100',
      boxColor: ColorPalettes.primaryColor,
      viewIsSelected: false,
    ));
    return catagories;
  }
}
