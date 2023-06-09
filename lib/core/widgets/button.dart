import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isSecondary;
  final String text;
  final String? iconLink;
  final bool showIcon;
  final Color? bgColor;
  final Color? textColor;

  const CustomButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.iconLink,
      this.showIcon = false,
      this.isSecondary = false,
      this.bgColor,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          side: isSecondary
              ? BorderSide(color: bgColor ?? theme.primaryColor, width: 2)
              : null,
          backgroundColor:
              isSecondary ? Colors.transparent : bgColor ?? theme.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kDefaultPadding2x),
          ),
          elevation: 0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              showIcon
                  ? Padding(
                      padding: const EdgeInsets.only(right: kDefaultPadding),
                      child: SvgPicture.asset(
                        iconLink!,
                        color: isSecondary
                            ? bgColor ?? theme.primaryColor
                            : textColor ?? Colors.white,
                      ),
                    )
                  : const SizedBox(),
              Text(
                text,
                style: theme.textTheme.bodyMedium!.copyWith(
                    color: isSecondary
                        ? bgColor ?? theme.primaryColor
                        : textColor ?? Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButtonSmall extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isSecondary;
  final String text;
  final String? iconLink;
  final bool showIcon;
  final Color? bgColor;
  final Color? textColor;

  const CustomButtonSmall(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.iconLink,
      this.showIcon = false,
      this.isSecondary = false,
      this.bgColor,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          side: isSecondary
              ? BorderSide(color: bgColor ?? theme.primaryColor, width: 2)
              : null,
          backgroundColor:
              isSecondary ? Colors.transparent : bgColor ?? theme.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kDefaultPadding2x),
          ),
          elevation: 0),
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding / 2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            showIcon
                ? Padding(
                    padding: const EdgeInsets.only(right: kDefaultPadding / 2),
                    child: SvgPicture.asset(
                      iconLink!,
                      color: isSecondary
                          ? bgColor ?? theme.primaryColor
                          : textColor ?? Colors.white,
                    ),
                  )
                : const SizedBox(),
            Text(
              text,
              style: theme.textTheme.bodyMedium!.copyWith(
                  color: isSecondary
                      ? bgColor ?? theme.primaryColor
                      : textColor ?? Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
