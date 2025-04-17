import 'package:flutter/material.dart';
import 'package:langfy/ui/pages/main/provider/main_provider.dart';
import 'package:langfy/ui/widgets/app/custom_bottom_navigation_bar.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainProvider>(
      create: (context) => MainProvider(),
      builder: (context, snapshot) {
        return Scaffold(
          body: Consumer<MainProvider>(
            builder: (context, provider, _) {
              return provider.page;
            },
          ),
          bottomNavigationBar: const CustomBottomNavigationBar(),
        );
      },
    );
  }
}
