import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mboga_pap/constants/constants.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Container(
          height: 150.h,
          width: width.w,
          decoration: BoxDecoration(
            color: Color(0xFFC7F6C7),
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Up to 30% Offer',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Color(0xFF19A519),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Enjoy Our big Offer \n for EveryDay',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Color(0xFFd3d3d3),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Image(
                  alignment: Alignment.centerRight,
                  image: AssetImage('assets/images/basket_banner.png'),
                  height: 100,
                  width: 100,
                )
              ],
            ),
          )),
    );
  }
}
