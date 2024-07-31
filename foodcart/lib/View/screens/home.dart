import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodcart/Model/catagory_model.dart';
import 'package:foodcart/Model/diet_model.dart';
import 'package:foodcart/View/screens/widgets/color_palettes.dart';
import 'package:foodcart/View/screens/widgets/sidebuttons.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<CatagoryModel> categories = [];
  List<DietModel> diets = [];

  void _getInitialInfo() {
    categories = CatagoryModel.getCatagories();
    diets = DietModel.getDiets();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
        appBar: appBar(),
        backgroundColor: ColorPalettes.backgroundDark,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _searchBar(),
            const SizedBox(height: 40),
            _categoriesSec(),
            const SizedBox(height: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Recommendations\nfor Diet',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  //color: ColorPalettes.mediumBlue,
                  height: 240,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Container(
                        width: 210,
                        decoration: BoxDecoration(
                          color: diets[index].boxColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(diets[index].iconPath),
                            Column(
                              children: [
                                Text(
                                  diets[index].name,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  diets[index].level +
                                      ' | ' +
                                      diets[index].duration +
                                      ' | ' +
                                      diets[index].calories,
                                  style: const TextStyle(
                                      color: Color.fromARGB(204, 71, 71, 71),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Container(
                              height: 45,
                              width: 138,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(colors: [
                                  ColorPalettes.lightBlue,
                                  ColorPalettes.primaryDark,
                                ]),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Center(
                                  child: Text(
                                'View',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 25,
                    ),
                    itemCount: diets.length,
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }

  Column _categoriesSec() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Category',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 15),
        Container(
          height: 120,
          //color: Colors.green,
          child: ListView.separated(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            separatorBuilder: (context, index) => SizedBox(width: 25),
            itemBuilder: (context, index) {
              return Container(
                width: 100,
                decoration: BoxDecoration(
                  color: categories[index].boxColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                          color: ColorPalettes.surfaceLight,
                          shape: BoxShape.circle),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          categories[index].iconPath,
                        ),
                      ),
                    ),
                    Text(
                      categories[index].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Container _searchBar() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 0.0,
            blurRadius: 40,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorPalettes.backgroundLight,
          contentPadding: const EdgeInsets.all(15),
          hintText: 'Whats on your mind?',
          hintStyle: const TextStyle(
            color: ColorPalettes.darkGray,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset('assets/icons/Search.svg'),
          ),
          suffixIcon: Container(
            width: 100,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const VerticalDivider(
                    color: ColorPalettes.darkGray,
                    indent: 10,
                    endIndent: 10,
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset('assets/icons/Filter.svg'),
                  ),
                ],
              ),
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }

//appbar side button widget settings:
  AppBar appBar() {
    return AppBar(
      title: const Text(
        'Breakfast',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10),
          child: SmallSidebuttons(
            textcolor: ColorPalettes.onSecondaryColor,
            backgroundcolor: ColorPalettes.backgroundLight,
            bodercolor: Colors.white,
            text: 'Menu',
            height: 20,
            width: 20,
            isIcon: true,
            iconPath: 'assets/icons/Arrow - Left 2.svg',
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10),
            width: 37,
            child: SmallSidebuttons(
              textcolor: ColorPalettes.onSecondaryColor,
              backgroundcolor: ColorPalettes.backgroundLight,
              bodercolor: Colors.white,
              text: 'Menu',
              height: 20,
              width: 20,
              isIcon: true,
              iconPath: 'assets/icons/dots.svg',
            ),
          ),
        ),
      ],
    );
  }
}
