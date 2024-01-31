import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/common/app_style.dart';
import 'package:foody/common/reusable_text.dart';
import 'package:foody/constants/constants.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      height: 110.h,
      width: width,
      color: kOffWhite,
      child: Container(
        margin: EdgeInsets.only(top: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 25.r,
              backgroundColor: kSecondary,
              backgroundImage: const NetworkImage(
                  "https://e7.pngegg.com/pngimages/178/595/png-clipart-user-profile-computer-icons-login-user-avatars-monochrome-black.png"),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableText(
                      text: "Deliver to ",
                      style: appStyle(13, kSecondary, FontWeight.w600)),
                  SizedBox(
                    width: width * 0.65,
                    child: Text(
                      '23423423 Kajen',
                      overflow: TextOverflow.ellipsis,
                      style: appStyle(12, kGrayLight, FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              "❄️",
              style: TextStyle(fontSize: 35),
            ),
          ],
        ),
      ),
    );
  }
}
