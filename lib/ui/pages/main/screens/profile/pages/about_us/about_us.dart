import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:langfy/ui/theme/app_colors.dart';
import 'package:langfy/ui/widgets/back_button2.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
          "About us",
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
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://s3-alpha-sig.figma.com/img/77a1/4bb6/1daed5a2e683c174cffd0bfe47e88586?Expires=1745798400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=bPrvVj4UqwV9BU3oh22dHgI3TQOvuKw6hHuMasaXYdOwGPdtBwwBfMpaP3yxkc-PutDU57E6IHrxGCViY72UAfiYPwIP~45wVSQ~~00s8TYzqgZOPYbcC4kDVIhz8RAoSLcbQ95wShMQXh9OguWh6adlSDQl1HxpFKln29zwHoyAURrXIVYYiFk3bUUYAm0roTHq59ZhnUpeI~vLLyFXpnymoKJB8fqvIkkUTxnz7~87b7vg7g4osc-x5EEATWfykNy2z7whTg78-xWmjK-bFMiWHgsTHApmTWARs5p0KrBE6jou7sS3Mk8pGPOKQ3AtEa88ehUe4V~XySeQKf7yAg__",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 26),
              Text(
                "Langify",
                style: textTheme.titleLarge?.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: theme.colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "O‘zbekistondagi xorijiy tillarni sifatli va tez o‘rgatuvchi birinchi ilova. ",
                style: textTheme.bodyLarge?.copyWith(
                  // fontSize: 16,
                  color: theme.colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 16),
              Card.outlined(
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {},
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      leading: Icon(
                        CupertinoIcons.doc_text,
                        color: theme.colorScheme.primary,
                      ),
                      title: Text(
                        "Terms of use",
                        style: textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: theme.colorScheme.onSurface,
                        ),
                      ),
                      trailing: const Icon(
                        CupertinoIcons.chevron_forward,
                        color: AppColors.disabled,
                      ),
                    ),
                    const Divider(
                      height: 0,
                      thickness: 1,
                      color: Color(0xFFEBEBEB),
                    ),
                    ListTile(
                      onTap: () {},
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      leading: Icon(
                        CupertinoIcons.lock_shield,
                        color: theme.colorScheme.primary,
                      ),
                      title: Text(
                        "Privacy policy",
                        style: textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: theme.colorScheme.onSurface,
                        ),
                      ),
                      trailing: const Icon(
                        CupertinoIcons.chevron_forward,
                        color: AppColors.disabled,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Version 1.0.0",
                    style: textTheme.bodyLarge?.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
