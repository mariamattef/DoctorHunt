import 'package:doctor_hunt/features/Home/presentation/pages/home_page.dart';
import 'package:doctor_hunt/features/app_bar_bottom/presentation/views/app_bar_bottom.dart';
import 'package:doctor_hunt/features/autth/presentarion/pages/login_page.dart';
import 'package:doctor_hunt/features/autth/presentarion/pages/signup_page.dart';
import 'package:doctor_hunt/features/on_boarding/presentations/pages/on_boarding_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const kLoginPage = '/LoginPage';
  static const kSignUpPage = '/SignUpPage';
  static const kHomePage = '/HomePage';
  static const kAppBarBottom = '/AppBarBottom';

  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnBoardingPage(),
      ),
      GoRoute(
        path: '/HomePage',
        builder: (context, state) => const HomePage(),
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
