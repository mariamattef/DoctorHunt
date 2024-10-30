import 'package:doctor_hunt/features/Search/presentation/pages/search_page.dart';
import 'package:doctor_hunt/features/app_bar_bottom/presentation/views/app_bar_bottom.dart';
import 'package:doctor_hunt/features/autth/presentarion/pages/forget_password_page.dart';
import 'package:doctor_hunt/features/autth/presentarion/pages/login_page.dart';
import 'package:doctor_hunt/features/autth/presentarion/pages/signup_page.dart';
import 'package:doctor_hunt/features/medical_records/presentation/pages/add_records.dart';
import 'package:doctor_hunt/features/medical_records/presentation/pages/medical_records.dart';

import '../../../../core/Helpers/experts_helper/general_helper.dart';

class AppRouter {
  static const kLoginPage = '/LoginPage';
  static const kSignUpPage = '/SignUpPage';
  static const kHomePage = '/HomePage';
  static const kAppBarBottom = '/AppBarBottom';
  static const kSearchPage = '/SearchPage';
  static const kMedicalRecordsPage = '/MedicalRecordsPage';
  static const kAddRecordsPage = '/AddRecordsPage';

  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MedicalRecordsPage(),
      ),
      GoRoute(
        path: '/LoginPage',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/SignUpPage',
        builder: (context, state) => const SignUpPage(),
      ),
      GoRoute(
        path: '/AppBarBottom',
        builder: (context, state) => const AppBarBottom(),
      ),
      GoRoute(
        path: '/ForgetPasswordScreen',
        builder: (context, state) => const ForgetPasswordScreen(),
      ),
      GoRoute(
        path: '/SearchPage',
        builder: (context, state) => const SearchPage(),
      ),
      GoRoute(
        path: '/AddRecordsPage',
        builder: (context, state) => const AddRecordsPage(),
      ),

      // GoRoute(
      //   path: '/ForgetPasswordScreen',
      //   builder: (context, state) => ForgetPasswordScreen(),
      // ),
    ],
  );
}

// class AppRouter {
//   Route generateRoute(RouteSettings settings) {
//     final String routeName = settings.name ?? '';
//     final dynamic data = settings.arguments;
//     switch (routeName) {
//       case HomePage.id:
//         return MaterialPageRoute(
//           builder: (context) => const HomePage(),
//         );
//       case OnBoardingPage.id:
//         return MaterialPageRoute(
//           builder: (context) => OnBoardingPage(),
//         );
//       case LoginPage.id:
//         return MaterialPageRoute(
//           builder: (context) => const LoginPage(),
//         );
//       case SignUpPage.id:
//         return MaterialPageRoute(
//           builder: (context) => const SignUpPage(),
//         );

//       default:
//         return MaterialPageRoute(
//           builder: (context) => const Center(
//             child: Text('DefaultPage'),
//           ),
//         );
//     }
//   }
// }
