import '../../../../core/widgets/custom%20_text_button.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../core/Routing/app_router.dart';
import 'package:flutter/material.dart';
import '../../../../core/Constants/image_utitity.dart';
import '../widgets/onBoarding_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnBoardingPage extends StatefulWidget {
  static const String id = 'OnBoardingPage';

  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  PageController _pageController = PageController();

  int currentIndex = 0;

  void onChangedFunction(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  //   // PreferencesService.isOnBoardingSeen = true;
  //   Navigator.pushReplacementNamed(context, LoginPage.id);
  // }

  _skipFunction(int index) {
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: PageView(
              physics: const ScrollPhysics(),
              controller: _pageController,
              onPageChanged: onChangedFunction,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 19.sp),
                  child: const OnBoardItemWidget(
                    image: ImageUtility.onBoarding1,
                    title: 'Find Trusted Doctors',
                    description:
                        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 19.sp),
                  child: const OnBoardItemWidget(
                    image: ImageUtility.onBoarding2,
                    title: 'Choose Best Doctors',
                    description:
                        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 19.sp),
                  child: const OnBoardItemWidget(
                    image: ImageUtility.onBoarding3,
                    title: 'Easy Appointments',
                    description:
                        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
                  ),
                ),
              ],
            ),
          ),
          CustomElevatedButton(
            onPressed: () {
              GoRouter.of(context).go(AppRouter.kSignUpPage);
            },
            text: 'Get Started',
            width: double.infinity,
          ),
          currentIndex == 2
              ? const SizedBox.shrink()
              : CustomTextButton(
                  label: 'Skip',
                  onPressed: () {
                    _skipFunction(2);
                  }),
          SizedBox(
            height: 43.h,
          ),
        ],
      ),
    );
  }
}
