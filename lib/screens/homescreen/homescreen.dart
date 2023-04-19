import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants.dart';
import '../../core/widgets/button.dart';
import 'components/hospital_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: kDefaultPadding2x),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: customTextFieldDecoration.copyWith(
                          hintText: "Search phrase",
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        fixedSize: const Size.square(48),
                        backgroundColor: Theme.of(context).primaryColor,
                        shape: const CircleBorder(),
                      ),
                      child: SvgPicture.asset(
                        "assets/svg/filter_icon.svg",
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: kDefaultPadding * 3),
                Container(
                    height: 150,
                    padding: const EdgeInsets.all(kDefaultPadding),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(kDefaultPadding2x),
                    ),
                    child: SizedBox.expand(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Find the nearest hospitals and medical facilities easily",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor),
                          ),
                          const Spacer(),
                          Align(
                            alignment: Alignment.centerRight,
                            child: CustomButtonSmall(
                              onPressed: () {},
                              showIcon: true,
                              text: "Locate on Map",
                              iconLink: "assets/svg/map_pin.svg",
                              bgColor:
                                  Theme.of(context).scaffoldBackgroundColor,
                              textColor: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                    )),
                const SizedBox(height: kDefaultPadding2x),
                Text(
                  "Recommendations",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(height: kDefaultPadding),
                const HospitalCard(),
                const SizedBox(height: kDefaultPadding2x),
                const HospitalCard(),
                const SizedBox(height: kDefaultPadding2x),
                const HospitalCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
