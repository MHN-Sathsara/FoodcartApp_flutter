import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SmallSidebuttons extends StatelessWidget {
  final Color textcolor;
  final Color backgroundcolor;
  final Color bodercolor;
  final String text;
  final String? iconPath;
  final double size;
  final bool isIcon;

  SmallSidebuttons({
    Key? key,
    required this.textcolor,
    required this.backgroundcolor,
    required this.bodercolor,
    required this.text,
    required this.size,
    this.isIcon = false,
    this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(color: bodercolor, width: 1.0),
        borderRadius: BorderRadius.circular(10),
        color: backgroundcolor,
      ),
      child: Center(
        child: isIcon && iconPath != null
            ? SvgPicture.asset(
                iconPath!,
                width: size,
                height: size,
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
