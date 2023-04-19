import 'package:flutter/material.dart';
import 'package:medlink/core/colors.dart';

///--------Paddings
///---------//

const double kDefaultPadding = 16.0;
const double kDefaultPadding2x = 32.0;

///----TextStyles----///
const TextStyle kHeading = TextStyle(fontWeight: FontWeight.w400, fontSize: 24);

const TextStyle kBody = TextStyle(fontWeight: FontWeight.normal, fontSize: 14);
const TextStyle kBodyLarge =
    TextStyle(fontWeight: FontWeight.normal, fontSize: 16);
const TextStyle kBodyBold =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 14);

///----------Text Form Field styles ---------////
InputDecoration customTextFieldDecoration = InputDecoration(
  errorStyle: kBody.copyWith(color: kRedPrimary),

  errorBorder: OutlineInputBorder(
    gapPadding: 0,
    borderSide: const BorderSide(width: 1, color: kRedPrimary),
    borderRadius: BorderRadius.circular(
      kDefaultPadding2x,
    ),
  ),

  border: OutlineInputBorder(
    gapPadding: 0,
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(kDefaultPadding2x),
  ),
  focusedBorder: OutlineInputBorder(
    gapPadding: 0,
    borderSide: const BorderSide(width: 2, color: kPurple60),
    borderRadius: BorderRadius.circular(kDefaultPadding2x),
  ),
  enabledBorder: OutlineInputBorder(
    gapPadding: 0,
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(kDefaultPadding2x),
  ),
  hoverColor: kPurple80,
  isDense: true,
  filled: true,
  fillColor: kNeutralVar95,
  hintStyle: kBody,

  // fillColor: kPurple20,
);

///-------DateTime Constants -------////
///
Map<int, String> monthsOfYear = {
  1: "January",
  2: "February",
  3: "March",
  4: "April",
  5: "May",
  6: "June",
  7: "July",
  8: "August",
  9: "September",
  10: "October",
  11: "November",
  12: "December",
};
