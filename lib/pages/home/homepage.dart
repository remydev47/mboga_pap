import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mboga_pap/constants/constants.dart';
import 'package:mboga_pap/pages/common/carousel_slider.dart';
import 'package:mboga_pap/pages/common/category.dart';
import 'package:mboga_pap/pages/common/category_list.dart';
import 'package:mboga_pap/pages/common/custom_appbar.dart';
import 'package:mboga_pap/pages/common/custom_container.dart';
import 'package:mboga_pap/pages/common/search_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGreen,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.h),
        child: CustomAppbar(),
      ),
      body: SafeArea(
        child: CustomContainer(
          containerContent: Column(
            children: [
              SearchButton(),
              SizedBox(
                height: 32,
              ),
              BannerSlider(),
              SizedBox(
                height: 10,
              ),
              CategoryList()
            ],
          ),
        ),
      ),
    );
  }
}
