import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:mboga_pap/constants/constants.dart';
import 'package:mboga_pap/pages/common/app_style.dart';
import 'package:mboga_pap/pages/common/custom_text.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 110.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.only(top: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 25.r,
                  backgroundColor: kGreen,
                  backgroundImage: NetworkImage(
                      "https://raw.githubusercontent.com/remydev47/flutter_expencse_tracker/main/assets/profileImage.webp"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomStyle(
                          text: 'Deliver to',
                          style: appStyle(13, Colors.grey, FontWeight.w600)),
                      SizedBox(
                        width: width * 0.65,
                        child: Text('Nairobi, Kenya',
                            overflow: TextOverflow.ellipsis,
                            style: appStyle(
                                11, Colors.greenAccent, FontWeight.w700)),
                      ),
                      //Image.asset('assets/images/bell.png'),
                    ],
                  ),
                ),
              ],
            ),
            Badge(
              label: Text('3'),
              child: IconButton(
                onPressed: () {},
                icon: Icon(MaterialCommunityIcons.bell),
                color: Colors.black,
                iconSize: 32,
              ),
            )
          ],
        ),
      ),
    );
  }
}
