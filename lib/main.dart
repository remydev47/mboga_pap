import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mboga_pap/constants/constants.dart';
import 'package:mboga_pap/pages/entrypoint.dart';

Widget defaultHome = MainScreen();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 825),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Mboga Pap',
          theme: ThemeData(
            scaffoldBackgroundColor: kLightGreen,
            iconTheme: const IconThemeData(color: kLightGreen),
            primarySwatch: Colors.grey,
          ),
          home: MainScreen(),
        );
      },
    );
  }
}
