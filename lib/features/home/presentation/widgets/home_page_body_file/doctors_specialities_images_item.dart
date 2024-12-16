import 'package:doctor_hunt/core/Helpers/experts_helper/general_helper.dart';
import 'package:doctor_hunt/features/home/data/models/all_doctors_response_model.dart';
import 'package:doctor_hunt/features/home/data/models/specialization_response_model.dart';

class DoctorsSpecialitiesImagesItem extends StatelessWidget {
  final AllDoctorsResponseModel? allDoctorsResponseModel;
  const DoctorsSpecialitiesImagesItem({
    super.key,
    required this.allDoctorsResponseModel,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/Group 667.png',
      // specializationData?.name ?? 'name',
    );
  }
}
