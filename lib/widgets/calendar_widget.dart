import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanager/constants/text_color.dart';
import 'package:taskmanager/helpers/date_helper.dart';

class CalendarDaysWidget extends StatefulWidget {
  const CalendarDaysWidget({Key? key}) : super(key: key);

  @override
  State<CalendarDaysWidget> createState() => _CalendarDaysWidgetState();
}

class _CalendarDaysWidgetState extends State<CalendarDaysWidget> {
  ScrollController dateAnimator = ScrollController();
  int? index = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dateAnimator.addListener(() {});

    // dateAnimator.addListener(() {
    //   if (dateAnimator.hasClients) {
    //     if (DateHelper.isToday(DateTime.now().day)) {
    //       dateAnimator.animateTo(DateTime.now().day.toDouble() * 40.0,
    //           duration: Duration(microseconds: 200), curve: Curves.easeIn);
    //     }
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          spacing: 28,
          children: days
              .map((e) => Text(
                    e,
                    style: GoogleFonts.spaceGrotesk(
                      color: DateHelper.getDayName(DateTime.now()) == e
                          ? CustomTextStyles.mainColor
                          : CustomTextStyles.grey,
                      fontWeight: DateHelper.getDayName(DateTime.now()) == e
                          ? FontWeight.w600
                          : FontWeight.w400,
                    ),
                  ))
              .toList(),
        ),
        const Divider(
          color: Color.fromARGB(255, 145, 144, 144),
        ),
        const SizedBox(height: 10.0),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.051,
          child: ListView.builder(
              controller: dateAnimator,
              scrollDirection: Axis.horizontal,
              itemCount: DateHelper.dates.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(bottom: 20.0, right: 18, left: 18),
                  child: GestureDetector(
                      onTap: () {
                        if (kDebugMode) {
                          print(index);
                        }
                        setState(() {
                          this.index = index;
                        });

                        // print(DateHelper.dates[index]);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          index + 1 == DateTime.now().day
                              ? Container(
                                  height: 27,
                                  width: 30,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          right: 3,
                                          top: 3,
                                          child: Container(
                                            height: 5,
                                            width: 5,
                                            decoration: BoxDecoration(
                                              color: CustomTextStyles.mainColor,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          )),
                                      Center(
                                        child: Text(
                                          DateHelper.dates[index],
                                          style: GoogleFonts.spaceGrotesk(
                                            color: CustomTextStyles.mainColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFFDE24F),
                                  ),
                                )
                              : Text(
                                  DateHelper.dates[index],
                                  style: GoogleFonts.spaceGrotesk(
                                    fontSize: 12.0,
                                    color: CustomTextStyles.grey,
                                  ),
                                ),
                        ],
                      )),
                );
              }),
        ),
      ],
    );
  }
}
