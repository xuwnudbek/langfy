import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:langfy/ui/widgets/back_button2.dart';

class PaymentHistory extends StatefulWidget {
  const PaymentHistory({super.key});

  @override
  State<PaymentHistory> createState() => _PaymentHistoryState();
}

class _PaymentHistoryState extends State<PaymentHistory> {
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
          "Payment history",
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Recent Payments",
                        style: textTheme.bodyLarge?.copyWith(
                          color: theme.colorScheme.onSurface,
                        ),
                      ),
                    ],
                  ),

                  // const Spacer(),
                  // ElevatedButton(
                  //   onPressed: () {},
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Text(
                  //         "Save",
                  //         style: TextStyle(
                  //           color: Theme.of(context).colorScheme.onPrimary,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  ...List.generate(5, (index) {
                    return ListTile(
                      onTap: () {},
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      title: Text(
                        "500 000 UZS",
                        style: textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: theme.colorScheme.onSurface,
                        ),
                      ),
                      subtitle: const Text(
                        "Description of action",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      shape: Border(
                        bottom: BorderSide(
                          color: Colors.grey.withValues(alpha: 0.5),
                          width: 0.5,
                        ),
                      ),
                      trailing: SvgPicture.asset("assets/icons/link.svg"),
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
