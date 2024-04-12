import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mboga_pap/constants/constants.dart';
import 'package:mboga_pap/pages/common/custom_container.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.h),
        child: Container(
          height: 130,
        ),
      ),
      body: SafeArea(
        child: CustomContainer(
          containerContent: Container(),
        ),
      ),
    );
  }
}
