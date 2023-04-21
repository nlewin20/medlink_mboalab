import 'package:flutter/material.dart';
import 'package:medlink/screens/hospital_details_screen/hospital_details_screen.dart';

import '../../../core/constants.dart';

class HospitalCard extends StatelessWidget {
  //Todo: create some Hospital models
  const HospitalCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () {
            ///Todo; replace with onPressed property
            Navigator.pushNamed(context, HospitalDetailsScreen.id);
          },
          child: Container(
            height: 180,
            padding: const EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/image_1.jpg"),
              ),
              borderRadius: BorderRadius.circular(kDefaultPadding2x),
            ),
          ),
        ),
        const SizedBox(
          height: kDefaultPadding / 2,
        ),
        Padding(
          padding: const EdgeInsets.only(left: kDefaultPadding),
          child: Text(
            "Bamenda Regional Hospital",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        )
      ],
    );
  }
}
