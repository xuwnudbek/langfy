import 'package:flutter/material.dart';
import 'package:langfy/ui/widgets/back_button2.dart';

class HelpSupport extends StatefulWidget {
  const HelpSupport({super.key});

  @override
  State<HelpSupport> createState() => _HelpSupportState();
}

class _HelpSupportState extends State<HelpSupport> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

  TextStyle get activeTabTextTheme => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Theme.of(context).colorScheme.primary,
      );

  TextStyle get inactiveTabTextTheme => activeTabTextTheme.copyWith(
        color: Theme.of(context).colorScheme.onSurface,
      );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: BackButton2(),
        ),
        leadingWidth: 80,
        title: Text(
          "Help & Support",
          style: textTheme.titleLarge?.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: theme.colorScheme.onSurface,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TabBar(
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    child: Text(
                      "FAQs",
                      style: _tabController.index == 0 ? activeTabTextTheme : inactiveTabTextTheme,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Contact Us",
                      style: _tabController.index == 1 ? activeTabTextTheme : inactiveTabTextTheme,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
