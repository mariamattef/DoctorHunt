import 'package:doctor_hunt/features/home/data/models/all_doctors_response_model.dart';
import 'package:doctor_hunt/features/home/presentation/widgets/home_page_body_file/doctor_details_item.dart';
import '../../../../core/Helpers/experts_helper/general_helper.dart';

class DoctorDetailsItemList extends StatelessWidget {
  const DoctorDetailsItemList({super.key, this.doctorsModelList});
  final List<DoctorsModel?>? doctorsModelList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: doctorsModelList?.length,
        itemBuilder: (context, index) {
          return DoctorDetailsItem(
            doctorsModelList: doctorsModelList?[index],
          );
        });
  }
}
