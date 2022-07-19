import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onboarding/models/onboarding/onboarding.dart';
import 'package:onboarding/screens/onboarding/widget/slide-tile.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({
    Key ? key
  }): super(key: key);

  @override
  State < OnboardingBody > createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State < OnboardingBody > {

  // Slides
  List < Slide > slides = [];

  // Slide index
  int slideIndex = 0;

  // Page controller
  PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    slides = getSlides();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: AspectRatio(
              aspectRatio: 0.73,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AspectRatio(
                    aspectRatio: 0.8,
                    child: PageView(
                      controller: pageController,
                      physics: BouncingScrollPhysics(),
                      onPageChanged: (index) async {
                        setState(() {
                          slideIndex = index;
                        });
                      },
                      children: [
                        SlideTile(
                          imagePath: slides[0].getImageAssetPath(),
                          title: slides[0].getTitle(),
                          desc: slides[0].getDesc(),
                        ),
                        SlideTile(
                          imagePath: slides[1].getImageAssetPath(),
                          title: slides[1].getTitle(),
                          desc: slides[1].getDesc(),
                        ),
                        SlideTile(
                          imagePath: slides[2].getImageAssetPath(),
                          title: slides[2].getTitle(),
                          desc: slides[2].getDesc(),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 3; i++) i == slideIndex ? _buildPageIndicator(true) : _buildPageIndicator(false)
                    ],
                  ),
                ),
                _button(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 8. w,
      width: 8. w,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.blue : Color.fromARGB(255, 192, 192, 192),
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _button() {
    return AspectRatio(
      aspectRatio: 5,
      child: Container(
        margin: EdgeInsets.only(right: 50. w, left: 50. w, bottom: 20. h),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            shadowColor: MaterialStateProperty.all(Colors.transparent),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              )
            )
          ),
          child: Text(
            'Continue',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15. sp,
              fontWeight: FontWeight.w400
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}