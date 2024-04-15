import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mboga_pap/constants/constants.dart';
import 'package:mboga_pap/constants/uidata.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return Column(
            children: [
              Container(
                height: 56,
                width: 56,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: kLightGreen,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Image(
                    image: AssetImage("assets/images/cat1.png"),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Milk',
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  color: Colors.black,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          );
        },
      ),
    );
  }
}
