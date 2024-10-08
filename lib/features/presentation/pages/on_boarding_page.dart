import 'package:doctor_hunt/features/presentation/pages/login_page.dart';
import 'package:doctor_hunt/features/presentation/widgets/custom%20_text_button.dart';
import 'package:doctor_hunt/features/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:doctor_hunt/features/core/utils/image_utitity.dart';
import 'package:doctor_hunt/features/presentation/widgets/onBoarding_item.dart';

class OnBoardingPage extends StatefulWidget {
  static const String id = 'SplashPage';

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
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 19),
                  child: OnBoardItemWidget(
                    image: ImageUtility.onBoarding1,
                    title: 'Find Trusted Doctors',
                    description:
                        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 19),
                  child: OnBoardItemWidget(
                    image: ImageUtility.onBoarding2,
                    title: 'Choose Best Doctors',
                    description:
                        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 19),
                  child: OnBoardItemWidget(
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
              Navigator.pushNamed(context, LoginPage.id);
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
          const SizedBox(
            height: 43,
          ),
        ],
      ),
    );
  }
}
