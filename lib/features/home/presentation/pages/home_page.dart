import 'package:doctor_hunt/core/Helpers/experts_helper/general_helper.dart';
import 'package:doctor_hunt/features/home/presentation/widgets/doctor_details_item.dart';
import 'package:doctor_hunt/features/home/presentation/widgets/doctors_spicialties_images.dart';
import 'package:doctor_hunt/features/home/presentation/widgets/feature_doctors_item_list.dart';
import 'package:doctor_hunt/features/home/presentation/widgets/home_page_body_file/custom_app_bar_home.dart';
import 'package:doctor_hunt/features/home/presentation/widgets/home_page_body_file/custom_label_home.dart';

class HomePage extends StatelessWidget {
  static const String id = 'HomePage';
  const HomePage({Key? key}) : super(key: key);

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
                const CustomAppBarHome(),
                // const CustomAppBArHome(),
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
                            height: MediaQuery.sizeOf(context).height * .37,
                            child: DoctorDetailsItemList()),
                        verticalSpace(31),
                        const CustomLabelHome(
                          text: 'Feature Doctor',
                        ),
                        verticalSpace(22),
                        SizedBox(
                            height: MediaQuery.sizeOf(context).height * .23,
                            // height: MediaQuery.of(context).size.height * .23,
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
