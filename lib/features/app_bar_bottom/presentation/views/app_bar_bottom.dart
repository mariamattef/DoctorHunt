import 'package:doctor_hunt/features/Search/presentation/pages/search_page.dart';

import '../../../Home/presentation/pages/home_page.dart';
import '../../../autth/presentarion/pages/signup_page.dart';
import '../../../on_boarding/presentations/pages/on_boarding_page.dart';
import '../../../../core/Helpers/experts_helper/general_helper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarBottom extends StatefulWidget {
  const AppBarBottom({
    super.key,
  });
  static const String id = 'AppBarBottom';

  @override
  State<AppBarBottom> createState() => _HomePageState();
}

class _HomePageState extends State<AppBarBottom> {
  int _currentIndex = 0;

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const OnBoardingPage();
      case 2:
        return const SearchPage();
      case 3:
        return const HomePage();

      default:
        return const HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getPage(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: AppColors.textColor,
        iconSize: 38,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.shifting,
        // fixedColor: Colors.red,
        useLegacyColorScheme: true,
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,

        selectedItemColor: AppColors.whiteColor,
        currentIndex: _currentIndex,
        onTap: (index) {
          _currentIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: _buildHaloIcon(Icons.home, 0),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _buildHaloIcon(Icons.favorite, 1),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: _buildHaloIcon(Icons.auto_stories, 2),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: _buildHaloIcon(FontAwesomeIcons.commentDots, 3),
            label: 'Chat',
          ),
        ],
      ),
    );
  }

  Widget _buildHaloIcon(IconData iconData, int index) {
    final bool isSelected = _currentIndex == index;
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: isSelected
          ? const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primaryColor,
            )
          : null,
      child: Icon(
        iconData,
        color: isSelected ? Colors.white : Colors.grey,
      ),
    );
  }
}
