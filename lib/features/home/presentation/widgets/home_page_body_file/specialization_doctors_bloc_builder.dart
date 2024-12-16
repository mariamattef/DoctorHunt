import 'package:doctor_hunt/core/Helpers/experts_helper/general_helper.dart';
import 'package:doctor_hunt/features/home/logic/home_cubit.dart';
import 'package:doctor_hunt/features/home/logic/home_state.dart';
import 'package:doctor_hunt/features/home/presentation/widgets/doctor_details_item.dart';
import 'package:doctor_hunt/features/home/presentation/widgets/doctors_spicialties_images_list.dart';
import 'package:doctor_hunt/features/home/presentation/widgets/feature_doctors_item_list.dart';
import 'package:doctor_hunt/features/home/presentation/widgets/home_page_body_file/custom_label_home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is AllDoctorsLoading ||
          current is AllDoctorsSuccess ||
          current is AllDoctorsError,
      builder: (context, state) {
        return state.maybeWhen(
          allDoctorsLoading: () => SizedBox(
            height: 100.h,
            child: setUpLoading(),
          ),
          allDoctorsSuccess: (allDoctorsResponseModel) {
            var allDoctorsList = allDoctorsResponseModel.doctorsList;
            return setUpSuccess(allDoctorsList, context);
          },
          allDoctorserror: (errorHandler) => setUpError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setUpLoading() {
    return Center(child: CircularProgressIndicator());
  }

  Widget setUpSuccess(allDoctorsList, context) {
    return Column(
      children: [
        DoctorsSpecialitiesImagesList(
            allDoctorsResponseModel: allDoctorsList ?? []),
        verticalSpace(10),
        const CustomLabelHome(
          text: 'Popular Doctor',
        ),
        verticalSpace(22),
        SizedBox(
            height: MediaQuery.sizeOf(context).height * .37,
            child: DoctorDetailsItemList(doctorsModelList: allDoctorsList?[0])),
        verticalSpace(31),
        const CustomLabelHome(
          text: 'Feature Doctor',
        ),
        verticalSpace(22),
        SizedBox(
            height: MediaQuery.sizeOf(context).height * .23,
            child: FeatureDoctorsItemList()),
        verticalSpace(31),
      ],
    );
  }

  Widget setUpError() {
    return SizedBox.shrink();
  }
}
