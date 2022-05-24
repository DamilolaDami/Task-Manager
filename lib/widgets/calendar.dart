import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanager/models/meetings_model.dart';

import '../constants/text_color.dart';
import '../helpers/date_helper.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  int timeInde = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ListView.builder(
                itemCount: DateHelper.calendarTime.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DateHelper.calendarTime[index],
                          style: GoogleFonts.spaceGrotesk(
                            fontSize: 12.0,
                            color: CustomTextStyles.grey,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Divider(
                          color: Color.fromARGB(255, 145, 144, 144),
                        )
                      ],
                    ),
                  );
                }),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: meetingss.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                        left: 40.0,
                        top: DateHelper.calendarTime == meetingss[index].time
                            ? 80
                            : 58,
                        bottom: DateHelper.calendarTime == meetingss[index].time
                            ? 80
                            : 58),
                    child: Container(
                      height: 85,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                meetingss[index].title,
                                style: GoogleFonts.spaceGrotesk(
                                  fontSize: 13.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  overlapped(index),
                                  Text(
                                    meetingss[index].date,
                                    style: GoogleFonts.spaceGrotesk(
                                      fontSize: 12.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              )
                            ]),
                      ),
                      decoration: BoxDecoration(
                        color: meetingss[index].calendarEventColor,
                      ),
                      width: MediaQuery.of(context).size.width / 1.5,
                    ),
                  );
                }),
          ],
        ),
      ],
    );
  }

  Widget overlapped(int index) {
    const overlap = 20.0;
    final items = meetingss[index].participants;

    List<Widget> stackLayers = List<Widget>.generate(items.length, (index) {
      return Padding(
          padding: EdgeInsets.only(
            left: index.toDouble() * overlap,
          ),
          child: SizedBox(
              width: 25,
              height: 25,
              child: Container(
                height: 25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(items[index])),
                ),
              )));
    });

    return Stack(children: stackLayers.toList());
  }
}
