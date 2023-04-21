import 'package:flutter/material.dart';
import 'package:medlink/core/colors.dart';

import '../../core/constants.dart';
import '../homescreen/components/custom_cricular_button.dart';
import 'components/custom_chip.dart';
import 'components/custom_table.dart';
import 'components/gallery_picture.dart';
import 'components/hospital_details_list_item.dart';
import 'components/title_ext.dart';

class HospitalDetailsScreen extends StatelessWidget {
  static const String id = "hospital_details_screen";

  const HospitalDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(0),
                  bottom: Radius.circular(kDefaultPadding2x)),
              child: Stack(
                children: [
                  const Image(
                    height: 300,
                    width: double.infinity,
                    image: AssetImage("assets/images/image_2.jpg"),
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: double.infinity,
                    height: 300,
                    padding: const EdgeInsets.all(kDefaultPadding),
                    decoration: BoxDecoration(color: kNeutral0.withOpacity(.5)),
                    child: Center(
                      child: Text("Bamenda Regional Hospital",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: kDefaultPadding),
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Text(
                "Hospital Description Forem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const SizedBox(height: kDefaultPadding2x),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                children: const [
                  HospitalDetailsListItem(
                    iconLink: "assets/svg/map_pin.svg",
                    text: "Hospital Round About, Bamenda",
                  ),
                  SizedBox(height: kDefaultPadding / 2),
                  HospitalDetailsListItem(
                    iconLink: "assets/svg/www_icon.svg",
                    text: "www.bamendaregionalhospital.org",
                  ),
                  SizedBox(height: kDefaultPadding / 2),
                  HospitalDetailsListItem(
                    iconLink: "assets/svg/mail_icon.svg",
                    text: "contact@bamendaregionalhospital.org",
                  ),
                  SizedBox(height: kDefaultPadding / 2),
                  HospitalDetailsListItem(
                    iconLink: "assets/svg/phone_icon.svg",
                    text: "+237 6 77 77 77 77",
                  ),
                ],
              ),
            ),
            const SizedBox(height: kDefaultPadding2x),
            const TitleText(text: "Gallery"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  SizedBox(width: kDefaultPadding),
                  GalleryPicture(imagePath: "assets/images/image_mri.jpg"),
                  SizedBox(width: kDefaultPadding),
                  GalleryPicture(imagePath: "assets/images/image_1.jpg"),
                  SizedBox(width: kDefaultPadding),
                  GalleryPicture(imagePath: "assets/images/image_2.jpg"),
                  SizedBox(width: kDefaultPadding),
                ],
              ),
            ),
            const SizedBox(height: kDefaultPadding2x),
            const TitleText(text: "Opening Hours"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: const CustomTable(
                days: [
                  "Monday",
                  "Tuesday",
                  "Wednesday",
                  "Thursday",
                  "Friday",
                  "Saturday",
                  "Sunday"
                ],
                time: [
                  "9:00 am - 05:00 pm",
                  "9:00 am - 05:00 pm",
                  "9:00 am - 05:00 pm",
                  "9:00 am - 05:00 pm",
                  "9:00 am - 05:00 pm",
                  "9:00 am - 05:00 pm",
                  "9:00 am - 05:00 pm",
                ],
              ),
            ),
            const SizedBox(height: kDefaultPadding),
            const TitleText(text: "Facilities"),
            Row(
              children: [
                const CustomChip(
                  label: "Magnetic Resonance Imaging",
                  isSelected: true,
                ),
                const SizedBox(width: kDefaultPadding),
                const CustomChip(
                  label: "ElectroPhoresis",
                  isSelected: false,
                )
              ],
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            const TitleText(text: "Services"),
            Row(
              children: [
                const CustomChip(
                  label: "Magnetic Resonance Imaging",
                  isSelected: true,
                ),
                const SizedBox(width: kDefaultPadding),
                const CustomChip(
                  label: "ElectroPhoresis",
                  isSelected: false,
                )
              ],
            ),
            SizedBox(height: kDefaultPadding),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(kDefaultPadding2x)),
                child: Stack(
                  children: [
                    Positioned(
                        bottom: kDefaultPadding,
                        right: kDefaultPadding,
                        child: CustomCircularButton(
                          onPressed: () {},
                          bgColor: Theme.of(context).scaffoldBackgroundColor,
                          iconColor: Theme.of(context).iconTheme.color,
                          iconPath: "assets/svg/filter_icon.svg",
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(height: kDefaultPadding),
          ],
        ),
      ),
    );
  }
}
