import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanager/models/meetings_model.dart';

import '../constants/text_color.dart';
import 'meetings_card.dart';

class MeetingsWidget extends StatefulWidget {
  const MeetingsWidget({Key? key}) : super(key: key);

  @override
  State<MeetingsWidget> createState() => _MeetingsWidgetState();
}

class _MeetingsWidgetState extends State<MeetingsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Meetings',
              style: GoogleFonts.spaceGrotesk(
                fontSize: 13.0,
                color: CustomTextStyles.mainColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              height: 28,
              width: 80,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text('Today',
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 11.0,
                      color: CustomTextStyles.mainColor,
                      fontWeight: FontWeight.w300,
                    )),
                const SizedBox(width: 5),
                const Icon(
                  Icons.arrow_drop_down,
                  size: 20,
                  color: CustomTextStyles.mainColor,
                ),
              ]),
              decoration: BoxDecoration(
                border: Border.all(
                  color: CustomTextStyles.mainColor,
                  width: 0.5,
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
        ListView.builder(
            itemCount: meetingss.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return MeetingsCard(
                meetingsModel: meetingss[index],
              );
            })
      ],
    );
  }
}
