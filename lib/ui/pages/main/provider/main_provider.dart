import 'package:flutter/material.dart';
import 'package:langfy/ui/pages/main/screens/courses/course_page.dart';
import 'package:langfy/ui/pages/main/screens/home/home_screen.dart';
import 'package:langfy/ui/pages/main/screens/profile/profile_screen.dart';
import 'package:langfy/ui/pages/main/screens/statistics/statistics_screen.dart';

class MainProvider extends ChangeNotifier {
  List<Widget> pages = [
    const HomeScreen(),
    const CoursePage(),
    const StatisticsScreen(),
    const ProfileScreen(),
  ];

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  set currentIndex(int value) {
    _currentIndex = value;
    notifyListeners();
  }

  Widget get page => pages[_currentIndex];
}
