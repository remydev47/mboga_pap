// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mboga_pap/constants/constants.dart';
import 'package:mboga_pap/controllers/tab_index_controller.dart';
import 'package:mboga_pap/pages/cart/cartpage.dart';
import 'package:mboga_pap/pages/favourite/favouritepage.dart';
import 'package:mboga_pap/pages/home/homepage.dart';
import 'package:mboga_pap/pages/order/orderpage.dart';
import 'package:mboga_pap/pages/profile/profilepage.dart';
//import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = [
    HomePage(),
    CartPage(),
    Favourite(),
    OrderPage(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());
    final textTheme = Theme.of(context).textTheme;
    return Obx(
      () => Scaffold(
          body: Stack(children: [
        pageList[controller.tabIndex],
        Align(
          alignment: Alignment.bottomCenter,
          child: Theme(
              data: Theme.of(context).copyWith(canvasColor: kGreen),
              child: BottomNavigationBar(
                showSelectedLabels: true,
                showUnselectedLabels: false,
                selectedFontSize: textTheme.bodySmall!.fontSize!,
                unselectedFontSize: textTheme.bodySmall!.fontSize!,
                unselectedIconTheme: IconThemeData(color: Colors.white),
                selectedIconTheme: IconThemeData(color: kLightGreen),
                onTap: (value) {
                  controller.SetTabIndex = value;
                },
                currentIndex: controller.tabIndex,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_bag_sharp), label: 'Mycart'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite), label: 'Favourite'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.receipt_long), label: 'MyOrder'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_2), label: 'Profile'),
                ],
              )),
        )
      ])),
    );
  }
}
