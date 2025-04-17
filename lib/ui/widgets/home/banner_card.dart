import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: theme.colorScheme.primary,
      ),
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Challenge",
                  style: textTheme.titleLarge?.copyWith(
                    fontStyle: FontStyle.italic,
                    color: theme.colorScheme.onPrimary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "March Challenge",
                  style: textTheme.titleLarge?.copyWith(
                    fontSize: 28,
                    color: theme.colorScheme.onPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      for (int i = 0; i < 3; i++)
                        Positioned(
                          left: i * 15,
                          child: Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: theme.colorScheme.onPrimary,
                              border: Border.all(
                                color: theme.colorScheme.onPrimary,
                                width: 2,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18),
                              child: Image.network(
                                "https://s3-alpha-sig.figma.com/img/845c/0a7e/76a09dd9880480e7c59f7385cde7161f?Expires=1745798400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=UhdC-0Whlfgyp4uW-mSLh-pg1kqsng76EJypHs4~YgrDcgJBjw9yNHoxHGHD~yBpd78VbRnj7qFHwa4Q~ks3vUYJzhbAOFBwD2NKbwtwkLAA3hZX5uwjqqvSYjjGg9TdH6xC0RaJPbtISzMyXy-tFhFIvSbQ1uuq0Eo-2AzEBOuhBVrqALbHIpgXDRp6mjyexia9MGLdWff0MUNaiLdSYROfN8cFNI0SVIbWziaWNVzLtOun0HDcg1kD5426Ybce7H8~dvykOYr2U7gFoRgqcNV8YOQufTuT3R-UgX5UyzZBTQcu5I9N9bcgqqRFvRbu7YwWBOdihRbrTrfXCt9Lpw__",
                                width: 36,
                                height: 36,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      Positioned(
                        left: 3 * 15,
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: theme.colorScheme.onPrimary,
                            border: Border.all(
                              color: theme.colorScheme.onPrimary,
                              width: 2,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "+3",
                              style: textTheme.bodyLarge?.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SvgPicture.asset(
              "assets/images/home_banner.svg",
            ),
          ),
        ],
      ),
    );
  }
}
