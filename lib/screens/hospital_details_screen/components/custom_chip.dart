import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/constants.dart';

class CustomChip extends StatelessWidget {
  final bool? isSelected;
  final String label;

  const CustomChip({Key? key, this.isSelected = false, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///Todo: add more customizable uptions like text, icons, etc
    return Chip(
      side: isSelected!
          ? BorderSide(width: 1, color: Theme.of(context).primaryColor)
          : BorderSide.none,
      elevation: 0,
      backgroundColor: isSelected! ? kPurple90 : Theme.of(context).cardColor,
      labelPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
      shape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(kDefaultPadding2x)),
      label: Text(
        label,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: isSelected! ? Theme.of(context).primaryColor : kNeutral20),
      ),
    );
  }
}
