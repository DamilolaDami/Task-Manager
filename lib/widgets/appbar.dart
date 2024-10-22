import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:icons_flutter/icons_flutter.dart';

import '../constants/images.dart';
import '../constants/text_color.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(userImage),
                ),
                const SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Damilola',
                      style: GoogleFonts.spaceGrotesk(
                        fontSize: 15.0,
                        color: CustomTextStyles.mainColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Welcome back',
                      style: GoogleFonts.spaceGrotesk(
                        fontSize: 11.0,
                        color: CustomTextStyles.mainColor,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Stack(
              children: [
                const Icon(
                  FlutterIcons.bell_o_faw,
                  size: 22,
                  color: CustomTextStyles.mainColor,
                ),
                Positioned(
                    right: 2,
                    top: 3,
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          color: CustomTextStyles.red,
                          borderRadius: BorderRadius.circular(10)),
                    ))
              ],
            ),
          ],
        ),
        const SizedBox(height: 30.0),
        const Divider(
          color: Color.fromARGB(255, 145, 144, 144),
        )
      ],
    );
  }
}
