import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:langfy/ui/theme/app_colors.dart';
import 'package:langfy/ui/widgets/back_button2.dart';

class SecuritySettings extends StatefulWidget {
  const SecuritySettings({super.key});

  @override
  State<SecuritySettings> createState() => _SecuritySettingsState();
}

class _SecuritySettingsState extends State<SecuritySettings> {
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
          "Security settings",
          style: textTheme.titleLarge?.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: theme.colorScheme.onSurface,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  ListTile(
                    onTap: () {},
                    leading: CircleAvatar(
                      backgroundColor: theme.colorScheme.surface,
                      child: SvgPicture.asset("assets/icons/replace_profile.svg"),
                    ),
                    title: Text(
                      "Phone / Email changing",
                      style: textTheme.titleMedium,
                    ),
                    trailing: const Icon(
                      CupertinoIcons.chevron_forward,
                      color: AppColors.disabled,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: CircleAvatar(
                      backgroundColor: theme.colorScheme.surface,
                      child: SvgPicture.asset("assets/icons/lock.svg"),
                    ),
                    title: Text(
                      "Password changing",
                      style: textTheme.titleMedium,
                    ),
                    trailing: const Icon(
                      CupertinoIcons.chevron_forward,
                      color: AppColors.disabled,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
