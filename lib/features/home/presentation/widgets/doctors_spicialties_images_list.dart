import 'package:doctor_hunt/features/home/data/models/all_doctors_response_model.dart';
import 'package:doctor_hunt/features/home/presentation/widgets/home_page_body_file/doctors_specialities_images_item.dart';
import '../../../../core/Helpers/experts_helper/general_helper.dart';

class DoctorsSpecialitiesImagesList extends StatelessWidget {
  final List<AllDoctorsResponseModel?> allDoctorsResponseModel;

  const DoctorsSpecialitiesImagesList(
      {super.key, required this.allDoctorsResponseModel});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * .3,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 20.w),
        itemCount: allDoctorsResponseModel.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return DoctorsSpecialitiesImagesItem(
            allDoctorsResponseModel: allDoctorsResponseModel[index],
          );
        },
      ),
    );
  }
}
