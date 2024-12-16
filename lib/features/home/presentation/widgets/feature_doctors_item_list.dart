import 'package:doctor_hunt/features/home/presentation/widgets/home_page_body_file/feature_doctors_item.dart';

import '../../../../core/Helpers/experts_helper/general_helper.dart';

class FeatureDoctorsItemList extends StatelessWidget {
  final List<String>? images;
  FeatureDoctorsItemList({this.images, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: images!.length,
      itemBuilder: (context, index) {
        return FeaturedDoctorItem(images: images);
      },
    );
  }
}
