import 'package:doctor_hunt/core/DI/dependency_injection.dart';
import 'package:doctor_hunt/core/Helpers/experts_helper/general_helper.dart';
import 'package:doctor_hunt/features/auth/presentarion/pages/forget_password_page.dart';
import 'package:doctor_hunt/features/auth/presentarion/pages/login_page.dart';
import 'package:doctor_hunt/features/auth/presentarion/pages/signup_page.dart';
import 'package:doctor_hunt/features/home/presentation/pages/home_page.dart';
import 'package:doctor_hunt/features/search/presentation/pages/search_page.dart';
import 'package:doctor_hunt/features/app_bar_bottom/presentation/pages/app_bar_bottom.dart';
import 'package:doctor_hunt/features/auth/logic/cubits/login_cubit/login_cubit.dart';
import 'package:doctor_hunt/features/auth/logic/cubits/signup_cubit/signup_cubit.dart';
import 'package:doctor_hunt/features/medical_records/presentation/pages/add_records.dart';
import 'package:doctor_hunt/features/on_boarding/presentation/pages/on_boarding_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static const kLoginPage = '/LoginPage';
  static const kSignUpPage = '/SignUpPage';
  static const kHomePage = '/HomePage';
  static const kAppBarBottom = '/AppBarBottom';
  static const kSearchPage = '/SearchPage';
  static const kMedicalRecordsPage = '/MedicalRecordsPage';
  static const kAddRecordsPage = '/AddRecordsPage';
  // final arguments = settings.arguments;

  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnBoardingPage(),
      ),
      GoRoute(
        path: '/LoginPage',
        builder: (context, state) => BlocProvider(
          create: (context) => getIt<LoginCubit>(),
          child: const LoginPage(),
        ),
      ),
      GoRoute(
        path: '/SignUpPage',
        builder: (context, state) => BlocProvider(
          create: (context) => getIt<SignupCubit>(),
          child: const SignUpPage(),
        ),
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
      GoRoute(
        path: '/HomePage',
        builder: (context, state) => const HomePage(),
      ),
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
//           builder: (context) => BlocProvider(
//             create: (context) => GetIt<LoginCubit>(),
//             child: const LoginPage(),
//           ),
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
