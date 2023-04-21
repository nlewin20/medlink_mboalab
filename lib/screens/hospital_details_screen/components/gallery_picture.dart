import 'package:flutter/material.dart';

import '../../../core/constants.dart';

class GalleryPicture extends StatelessWidget {
  final String imagePath;
  final VoidCallback? onPressed;

  const GalleryPicture({Key? key, required this.imagePath, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///Todo: add onpressed to expand image when clicked
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * .65,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(kDefaultPadding2x)),
    );
  }
}
