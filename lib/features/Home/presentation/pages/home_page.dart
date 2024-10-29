import '../../../../core/Helpers/experts_helper/general_helper.dart';
import '../widgets/custom_app_bar_home.dart';
import '../widgets/custom_label_home.dart';
import '../widgets/doctor_details_item.dart';
import '../widgets/doctors_spicialties_images.dart';
import '../widgets/feature_doctors_item_list.dart';

class HomePage extends StatelessWidget {
  //! TODO: Refactor this screen more
  //! hint : create a HomePageBodyFile

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
                const CustomAppBArHome(),
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
                            //! TODO:  Use height: MediaQuery.sizeOf(context).height * .23 instead , this way we enhance app perofromance
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
