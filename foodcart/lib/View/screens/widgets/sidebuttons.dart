import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SmallSidebuttons extends StatelessWidget {
  final Color textcolor;
  final Color backgroundcolor;
  final Color bodercolor;
  final String text;
  final String? iconPath;
  final double height;
  final double width;
  final bool isIcon;

  SmallSidebuttons({
    Key? key,
    required this.textcolor,
    required this.backgroundcolor,
    required this.bodercolor,
    required this.text,
    required this.height,
    required this.width,
    this.isIcon = false,
    this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: bodercolor, width: 1.0),
        borderRadius: BorderRadius.circular(20),
        color: backgroundcolor,
      ),
      child: Center(
        child: isIcon && iconPath != null
            ? SvgPicture.asset(
                iconPath!,
                width: width,
                height: height,
              )
            : Text(
                text,
                style: TextStyle(
                    color: textcolor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'),
              ),
      ),
    );
  }
}
