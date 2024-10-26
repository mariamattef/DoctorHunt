import 'package:doctor_hunt/features/autth/presentarion/widgets/signup-page_body.dart';
import '../../../../core/Helpers/experts_helper/general_helper.dart';

class SignUpPage extends StatelessWidget {
  static const String id = "SignUpPage";
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppAssets.bg,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SignUpPageBody(),
      ]),
    );
  }
}
