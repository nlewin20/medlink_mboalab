import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants.dart';

class HospitalDetailsListItem extends StatelessWidget {
  final String iconLink;
  final String text;

  const HospitalDetailsListItem(
      {Key? key, required this.iconLink, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          iconLink,
          color: Theme.of(context).primaryColor,
        ),
        const SizedBox(
          width: kDefaultPadding,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
