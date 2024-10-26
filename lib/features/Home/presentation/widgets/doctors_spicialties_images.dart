import 'package:doctor_hunt/core/Helpers/experts_helper/general_helper.dart';

class DoctorsSpecialtiesImages extends StatelessWidget {
  DoctorsSpecialtiesImages({super.key});
  final List<String>? images = [
    'assets/images/Group 664.png',
    'assets/images/Group 665.png',
    'assets/images/Group 666.png',
    'assets/images/Group 667.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * .3,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 20.w),
        itemCount: images!.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            images![index],
          );
        },
      ),
    );
  }
}
