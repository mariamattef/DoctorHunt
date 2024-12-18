import 'package:doctor_hunt/core/Helpers/experts_helper/general_helper.dart';
import 'package:doctor_hunt/features/home/presentation/widgets/home_page_body_file/custom_app_bar_home.dart';
import 'package:doctor_hunt/features/home/presentation/widgets/home_page_body_file/specialization_doctors_bloc_builder.dart';

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
                const CustomAppBarHome(),
                SizedBox(height: 50.h),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [SpecializationDoctorsBlocBuilder()],
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
