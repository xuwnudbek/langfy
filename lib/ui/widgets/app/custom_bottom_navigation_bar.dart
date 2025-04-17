import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:langfy/ui/pages/main/provider/main_provider.dart';
import 'package:provider/provider.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Consumer<MainProvider>(
      builder: (context, provider, _) {
        return BottomNavigationBar(
          backgroundColor: theme.bottomNavigationBarTheme.backgroundColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/navbar/home.svg',
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/navbar/home_filled.svg',
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/navbar/book.svg',
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/navbar/book_filled.svg',
              ),
              label: 'Book',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/navbar/statistic.svg',
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/navbar/statistic_filled.svg',
              ),
              label: 'Statistic',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/navbar/profile.svg',
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/navbar/profile_filled.svg',
              ),
              label: 'Profile',
            ),
          ],
          currentIndex: provider.currentIndex,
          onTap: (index) {
            provider.currentIndex = index;
          },
        );
      },
    );
  }
}
