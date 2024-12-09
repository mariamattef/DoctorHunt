import 'package:doctor_hunt/core/Helpers/experts_helper/general_helper.dart';
import '../../../../app_router.dart';
import 'package:doctor_hunt/core/widgets/custom_app_bar.dart';

class MedicalRecordsPage extends StatelessWidget {
  const MedicalRecordsPage({super.key});

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
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              child: Column(
                children: [
                  const CustomAppBAr(
                    title: 'Medical Records',
                  ),
                  verticalSpace(98),
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .3,
                        width: MediaQuery.of(context).size.width * .6,
                        decoration: BoxDecoration(
                            color: AppColors.lightBlueColor,
                            borderRadius: BorderRadius.circular(170)),
                        // color: AppColors.lightBlueColor,
                      ),
                      Positioned(
                        left: 75,
                        top: 0,
                        child: Image.asset(
                          AppAssets.medicalRecords,
                          height: MediaQuery.of(context).size.height * .3,
                          width: MediaQuery.of(context).size.width * .3,
                          // width: 107,
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(40),
                  Text(
                    'Add a medical record.',
                    style:
                        TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w700),
                  ),
                  verticalSpace(13),
                  Text(
                    'A detailed health history helps a doctor diagnose you btter.',
                    textAlign: TextAlign.center,
                    style: AppStyles.textStyle14
                        .copyWith(color: AppColors.textColor),
                  ),
                  verticalSpace(33),
                  CustomElevatedButton(
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.kAddRecordsPage);
                      },
                      text: 'Add a record',
                      borderRadius: BorderRadius.circular(6),
                      width: double.infinity)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
