import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanager/models/meetings_model.dart';

import '../constants/text_color.dart';

class MeetingsCard extends StatelessWidget {
  MeetingsModel meetingsModel;
  MeetingsCard({Key? key, required this.meetingsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 26.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                  height: 50,
                  child: Image.asset(meetingsModel.iconImagePath ?? ' ')),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    meetingsModel.title,
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 13.0,
                      color: CustomTextStyles.mainColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      const Icon(
                        FlutterIcons.calendar_ant,
                        color: CustomTextStyles.grey,
                        size: 14,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(meetingsModel.date,
                          style: GoogleFonts.spaceGrotesk(
                            fontSize: 11.0,
                            color: CustomTextStyles.grey,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 28,
            width: 65,
            child: Center(
                child: Text('Join',
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 11.0,
                      color: const Color(0xFF31BBF6),
                      fontWeight: FontWeight.w600,
                    ))),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(49, 187, 246, 0.25),
            ),
          )
        ],
      ),
    );
  }
}
