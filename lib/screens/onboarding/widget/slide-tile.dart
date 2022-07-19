import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SlideTile extends StatelessWidget {
  final String ? imagePath;
  final String ? title;
  final String ? desc;
  const SlideTile({
    Key ? key,
    this.imagePath,
    this.title,
    this.desc
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
      AspectRatio(
        aspectRatio: 1.2,
        child: Container(
          margin: EdgeInsets.only(right:37.w,left: 37.w),
          child: SvgPicture.asset(
            imagePath!
          ),
        ),
      ),
      AspectRatio(
        aspectRatio: 3,
        child: Column(
          children: [
            Text(
              title!,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 28.sp
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:25.h,right:46.w,left:46.w),
              child: Text(
                desc!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff949494),
                  fontWeight: FontWeight.w400,
                  fontSize: 15.sp
                ),
              ),
            )
          ],
        ),
     )
     ],
    );
  }
}