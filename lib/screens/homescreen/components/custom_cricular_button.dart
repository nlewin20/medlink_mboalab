import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCircularButton extends StatelessWidget {
  final String iconPath;
  final Color? bgColor;
  final Color? iconColor;
  final VoidCallback onPressed;

  const CustomCircularButton(
      {Key? key,
      required this.onPressed,
      required this.iconPath,
      this.bgColor,
      this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
        elevation: 0,
        fixedSize: const Size.square(48),
        backgroundColor: bgColor ?? Theme.of(context).primaryColor,
        shape: const CircleBorder(),
      ),
      child: SvgPicture.asset(
        iconPath,
        color: iconColor ?? Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
