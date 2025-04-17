import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:langfy/ui/pages/main/screens/profile/pages/about_us/about_us.dart';
import 'package:langfy/ui/pages/main/screens/profile/pages/payment_history/payment_history.dart';
import 'package:langfy/ui/pages/main/screens/profile/pages/personal/personal_information.dart';
import 'package:langfy/ui/pages/main/screens/profile/pages/security_settings/security_settings.dart';
import 'package:langfy/ui/pages/main/screens/profile/pages/support/help_support.dart';
import 'package:langfy/ui/theme/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isDarkMode = Get.isDarkMode;
  bool get isDarkMode => _isDarkMode;
  set isDarkMode(value) {
    setState(() {
      _isDarkMode = value;
      Get.changeThemeMode(_isDarkMode ? ThemeMode.dark : ThemeMode.light);
    });
  }

  bool _canNotify = false;
  bool get canNotify => _canNotify;
  set canNotify(value) {
    setState(() {
      _canNotify = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2,
                            color: AppColors.primary,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            "https://s3-alpha-sig.figma.com/img/82d6/324b/237662d441aef8f98eaacba6ba533502?Expires=1745798400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=sn7YpxSuJ1aQ6alwifNlftUtIlRqkcIpbrEqbNHtCq3uhuJEDVveEsZ9UrxQWCV393bCbmXHnY7~R8wOJzjOFn0r4LvcdS17C6yAxGPaqyeL2Q6DxeIlqn35d4~iDSAxZ6JecBnlWRP0qwH5EsN2dxz2CuWmgCZgWQmWKfiWY~nH7duO-gepXWwQ1QccNu92KiznY7Vi3yYap5xM3LzI04tE3smyuKy5Dj8c-9J1PEdI3~nzKq267tgT17ok~3pj7RVPaNAbrLlsT3zksj7m-kXg4AM6j1vn6xF3UwkmpJ5licBtR4Mx~22rjdOnJqtsg4yypKmgrFuvjl9onklmqA__",
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -10,
                        right: -10,
                        child: IconButton(
                          style: IconButton.styleFrom(
                            side: const BorderSide(
                              width: 1.5,
                              color: AppColors.primary,
                            ),
                            backgroundColor: theme.colorScheme.surface,
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 24,
                            minHeight: 24,
                            maxHeight: 24,
                            maxWidth: 24,
                          ),
                          onPressed: () {},
                          padding: const EdgeInsets.all(0),
                          icon: Icon(
                            Icons.edit,
                            color: theme.colorScheme.primary,
                            size: 12,
                            weight: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "John Doe",
                    style: textTheme.titleMedium,
                  ),
                  Text(
                    "@johndoe",
                    style: textTheme.bodyMedium?.copyWith(
                      color: AppColors.disabled,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                children: [
                  ListTile(
                    onTap: () {
                      Get.to(
                        () => const PersonalInformation(),
                        transition: Transition.rightToLeft,
                      );
                    },
                    leading: CircleAvatar(
                      backgroundColor: theme.colorScheme.surface,
                      child: const Icon(
                        CupertinoIcons.person,
                        color: AppColors.primary,
                      ),
                    ),
                    title: Text(
                      "Profile",
                      style: textTheme.titleMedium,
                    ),
                    trailing: const Icon(
                      CupertinoIcons.chevron_forward,
                      color: AppColors.disabled,
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(
                        () => const PaymentHistory(),
                        transition: Transition.rightToLeft,
                      );
                    },
                    leading: CircleAvatar(
                      backgroundColor: theme.colorScheme.surface,
                      child: const Icon(
                        CupertinoIcons.creditcard,
                        color: AppColors.primary,
                      ),
                    ),
                    title: Text(
                      "Payment history",
                      style: textTheme.titleMedium,
                    ),
                    trailing: const Icon(
                      CupertinoIcons.chevron_forward,
                      color: AppColors.disabled,
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(
                        () => const SecuritySettings(),
                        transition: Transition.rightToLeft,
                      );
                    },
                    leading: CircleAvatar(
                      backgroundColor: theme.colorScheme.surface,
                      child: const Icon(
                        CupertinoIcons.lock_shield,
                        color: AppColors.primary,
                      ),
                    ),
                    title: Text(
                      "Security settings",
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
                      child: const Icon(
                        CupertinoIcons.globe,
                        color: AppColors.primary,
                      ),
                    ),
                    title: Text(
                      "Language",
                      style: textTheme.titleMedium,
                    ),
                    trailing: const Icon(
                      CupertinoIcons.chevron_forward,
                      color: AppColors.disabled,
                    ),
                  ),
                  ListTile(
                    // onTap: () {},
                    leading: CircleAvatar(
                      backgroundColor: theme.colorScheme.surface,
                      child: Icon(
                        isDarkMode ? CupertinoIcons.moon : CupertinoIcons.sun_max,
                        color: AppColors.primary,
                      ),
                    ),
                    title: Text(
                      isDarkMode ? "Dark mode" : "Ligh mode",
                      style: textTheme.titleMedium,
                    ),
                    trailing: CupertinoSwitch(
                      thumbColor: Colors.white,
                      activeTrackColor: AppColors.primary,
                      inactiveTrackColor: AppColors.surface,
                      inactiveThumbColor: Colors.white,
                      value: !isDarkMode,
                      onChanged: (value) {
                        isDarkMode = !isDarkMode;
                      },
                    ),
                  ),
                  ListTile(
                    // onTap: () {},
                    leading: CircleAvatar(
                      backgroundColor: theme.colorScheme.surface,
                      child: Icon(
                        canNotify ? CupertinoIcons.bell : CupertinoIcons.bell_slash,
                        color: AppColors.primary,
                      ),
                    ),
                    title: Text(
                      "Notifications",
                      style: textTheme.titleMedium,
                    ),
                    trailing: CupertinoSwitch(
                      thumbColor: Colors.white,
                      activeTrackColor: AppColors.primary,
                      inactiveTrackColor: AppColors.surface,
                      inactiveThumbColor: Colors.white,
                      value: canNotify,
                      onChanged: (value) {
                        canNotify = value;
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Divider(),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(
                        () => const HelpSupport(),
                        transition: Transition.rightToLeft,
                      );
                    },
                    leading: CircleAvatar(
                      backgroundColor: theme.colorScheme.surface,
                      child: const Icon(
                        CupertinoIcons.question_circle,
                        color: AppColors.primary,
                      ),
                    ),
                    title: Text(
                      "Help & Support",
                      style: textTheme.titleMedium,
                    ),
                    trailing: const Icon(
                      CupertinoIcons.chevron_forward,
                      color: AppColors.disabled,
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(
                        () => const AboutUs(),
                        transition: Transition.rightToLeft,
                      );
                    },
                    leading: CircleAvatar(
                      backgroundColor: theme.colorScheme.surface,
                      child: const Icon(
                        CupertinoIcons.info,
                        color: AppColors.primary,
                      ),
                    ),
                    title: Text(
                      "About LangiFy",
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
                      child: const Icon(
                        CupertinoIcons.square_arrow_right,
                        color: AppColors.error,
                      ),
                    ),
                    title: Text(
                      "Logout",
                      style: textTheme.titleMedium?.copyWith(
                        color: AppColors.error,
                      ),
                    ),
                    trailing: Icon(
                      CupertinoIcons.chevron_forward,
                      color: AppColors.error.withValues(alpha: 0.4),
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
