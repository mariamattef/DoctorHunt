import 'package:flutter/material.dart';
import 'package:doctor_hunt/features/presentation/pages/home_page.dart';
import 'package:doctor_hunt/features/presentation/pages/splash_page.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const DoctorHunt());
}

class DoctorHunt extends StatelessWidget {
  const DoctorHunt({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) {
        final String routeName = settings.name ?? '';
        final dynamic data = settings.arguments;
        switch (routeName) {
          case SplashPage.id:
            return MaterialPageRoute(
              builder: (context) => const SplashPage(),
            );
          case HomePage.id:
            return MaterialPageRoute(
              builder: (context) => const HomePage(),
            );
          // case OnBoardingPage.id:
          //   return MaterialPageRoute(
          //     builder: (context) => const OnBoardingPage(),
          //   );

          default:
            return MaterialPageRoute(
              builder: (context) => const Center(
                child: Text('DefaultPage'),
              ),
            );
        }
      },
      initialRoute: SplashPage.id,
    );
  }
}
