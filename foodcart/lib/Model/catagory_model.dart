import 'package:flutter/material.dart';
import 'package:foodcart/View/screens/widgets/color_palettes.dart';

class CatagoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CatagoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CatagoryModel> getCatagories() {
    List<CatagoryModel> catagories = [];

    catagories.add(CatagoryModel(
      name: 'Salad',
      iconPath: 'assets/icons/plate.svg',
      boxColor: ColorPalettes.primaryColor,
    ));

    catagories.add(CatagoryModel(
      name: 'Pancake',
      iconPath: 'assets/icons/blueberry-pancake.svg',
      boxColor: ColorPalettes.primaryLight,
    ));

    catagories.add(CatagoryModel(
      name: 'Pie',
      iconPath: 'assets/icons/pie.svg',
      boxColor: ColorPalettes.primaryColor,
    ));

    catagories.add(CatagoryModel(
      name: 'Juices',
      iconPath: 'assets/icons/orange-snacks.svg',
      boxColor: ColorPalettes.primaryLight,
    ));

    return catagories;
  }
}
