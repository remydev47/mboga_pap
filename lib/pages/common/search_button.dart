import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:mboga_pap/constants/constants.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26),
      child: Container(
        width: width.w,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.blueGrey),
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: kGreen,
              size: 32,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Search Food, Drinks etc...',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.normal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
