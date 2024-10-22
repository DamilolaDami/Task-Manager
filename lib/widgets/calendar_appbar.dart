import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:intl/intl.dart';

import '../constants/text_color.dart';
import '../helpers/date_helper.dart';

class CalendarAppBar extends StatefulWidget {
  const CalendarAppBar({Key? key}) : super(key: key);

  @override
  State<CalendarAppBar> createState() => _CalendarAppBarState();
}

class _CalendarAppBarState extends State<CalendarAppBar>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dateToday,
                  style: GoogleFonts.spaceGrotesk(
                    fontSize: 15.0,
                    color: CustomTextStyles.mainColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                StreamBuilder(
                    stream: timer,
                    builder: (context, index) {
                      return Text(
                        DateFormat('hh : mm : ss').format(DateTime.now()) +
                            ' ' +
                            DateFormat('a').format(DateTime.now()),
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 12.0,
                          color: CustomTextStyles.mainColor,
                          fontWeight: FontWeight.w300,
                        ),
                      );
                    })
              ],
            ),
            Row(
              children: const [
                Icon(FlutterIcons.calendar_ant),
                SizedBox(
                  width: 30,
                ),
                Icon(FlutterIcons.search1_ant),
                SizedBox(
                  width: 40,
                ),
                Icon(FlutterIcons.more_vert_mdi),
              ],
            )
          ],
        ),
        const SizedBox(height: 30.0),
        const Divider(
          color: Color.fromARGB(255, 145, 144, 144),
        )
      ],
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
