import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ui_challenge_1/src/helper/hex_color.dart';
import 'package:ui_challenge_1/src/helper/k_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#5F18E8'),
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                KText(
                  text: 'Vehicle Requisition',
                  color: Colors.white,
                  fontSize: 20,
                ),
                SvgPicture.asset(
                  'images/svg/filter_alt.svg',
                  color: Colors.white,
                  height: 25,
                  width: 25,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 28,
            width: Get.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
          ),
          Container(
            height: Get.height - 179,
            color: Colors.white,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: 15,
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 7,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 54,
                                  width: 54,
                                  decoration: BoxDecoration(
                                    color: HexColor('#5F18E8'),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Icon(
                                    Icons.car_crash_sharp,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        KText(
                                          text: 'Vehicle Requisition',
                                          fontSize: 16,
                                          color: HexColor(
                                            '#43505C',
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 30,
                                          width: 1,
                                          color: HexColor('#43505C'),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        KText(text: '1 Days')
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    KText(
                                      text: '05 Sept 2023 - 06 Sept 2023',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                      color: HexColor('#FFF7E6'),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15,
                                      vertical: 10,
                                    ),
                                    child: KText(
                                      text: 'Pending',
                                      color: HexColor('#FFCA58'),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                            ),
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
