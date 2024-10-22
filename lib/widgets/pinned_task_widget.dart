import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:icons_flutter/icons_flutter.dart';

import '../constants/images.dart';
import '../constants/text_color.dart';

class PinnedTaskWidget extends StatelessWidget {
  const PinnedTaskWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 327,
          width: 175,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: 40,
                width: 50,
                child: Center(
                    child: Text(
                  't',
                  style: GoogleFonts.spaceGrotesk(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                )),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black.withOpacity(0.2),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                 clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      person1,
                      width: 30,
                    ),
                    Positioned(
                      left: 25,
                      child: Image.asset(
                        person2,
                        width: 30,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('Talent Ui\nDesign',
                    style: GoogleFonts.spaceGrotesk(
                      color: CustomTextStyles.mainColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                    )),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('Web and responsive',
                    style: GoogleFonts.spaceGrotesk(
                      color: CustomTextStyles.mainColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('2 Comments',
                        style: GoogleFonts.spaceGrotesk(
                          color: CustomTextStyles.mainColor,
                          fontSize: 10,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 6,
                      width: 6,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: CustomTextStyles.mainColor,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text('1 File',
                        style: GoogleFonts.spaceGrotesk(
                          color: CustomTextStyles.mainColor,
                          fontSize: 10,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: const LinearProgressIndicator(
                    minHeight: 5,
                    value: 0.4,
                    backgroundColor: CustomTextStyles.grey,
                    valueColor: AlwaysStoppedAnimation<Color>(
                        CustomTextStyles.mainColor),
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                ),
                child: RichText(
                    text: TextSpan(
                  text: 'In Progress ',
                  style: GoogleFonts.spaceGrotesk(
                    color: CustomTextStyles.mainColor,
                    fontSize: 10,
                  ),
                  children: [
                    TextSpan(
                      text: '40%',
                      style: GoogleFonts.spaceGrotesk(
                        color: CustomTextStyles.mainColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      FlutterIcons.pin_mco,
                      color: CustomTextStyles.mainColor,
                      size: 15,
                    ),
                    Row(
                      children: [
                        const Icon(
                          FlutterIcons.calendar_ant,
                          size: 14,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text('Feb 15',
                            style: GoogleFonts.spaceGrotesk(
                              color: CustomTextStyles.mainColor,
                              fontSize: 10,
                            )),
                      ],
                    )
                  ],
                ),
              )
            ]),
          ),
          decoration: const BoxDecoration(
            color: CustomTextStyles.green,
          ),
        ),
        Positioned(
          right: -50,
          bottom: 100,
          child: Image.asset(
            t,
            width: 200,
            height: 200,
          ),
        ),
      ],
    );
  }
}
