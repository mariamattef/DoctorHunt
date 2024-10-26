import 'package:doctor_hunt/core/Helpers/experts_helper/general_helper.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/custom_app_bar_home.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/custom_label_home.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/doctor_details_item.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/doctors_spicialties_images.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/feature_doctors_item_list.dart';

class HomePage extends StatelessWidget {
  static const String id = 'HomePage';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppAssets.bg,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                CustomAppBArHome(),
                SizedBox(
                  height: 50.h,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        DoctorsSpecialtiesImages(),
                        verticalSpace(10),
                        const CustomLabelHome(
                          text: 'Popular Doctor',
                        ),
                        verticalSpace(22),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .37,
                            child: DoctorDetailsItemList()),
                        verticalSpace(31),
                        const CustomLabelHome(
                          text: 'Feature Doctor',
                        ),
                        verticalSpace(22),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .23,
                            child: FeatureDoctorsItemList()),
                        verticalSpace(31),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}