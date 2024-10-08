import 'package:doctor_hunt/features/core/color_utility.dart';
import 'package:flutter/cupertino.dart';

class OnBoardItemWidget extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  const OnBoardItemWidget(
      {required this.title,
      required this.image,
      required this.description,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            image,
            // height: 400,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 49),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 80,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 28),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: ColorUtility.grayText,
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
