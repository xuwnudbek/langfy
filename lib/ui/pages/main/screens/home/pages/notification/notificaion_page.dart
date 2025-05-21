import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:langfy/ui/widgets/back_button2.dart';

class NotificaionPage extends StatefulWidget {
  const NotificaionPage({super.key});

  @override
  State<NotificaionPage> createState() => _NotificaionPageState();
}

class _NotificaionPageState extends State<NotificaionPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: BackButton2(),
        ),
        leadingWidth: 80,
        title: Text(
          "Notifications",
          style: textTheme.titleLarge?.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: theme.colorScheme.onSurface,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.check,
              color: colorScheme.primary,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.only(bottom: 16),
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (_, __) => const Divider(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  bool marked = index < 4;

                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: marked ? colorScheme.primary.withValues(alpha: 0.2) : colorScheme.surface,
                      child: Icon(
                        marked ? CupertinoIcons.bell_fill : CupertinoIcons.bell,
                        color: marked ? colorScheme.primary : colorScheme.onSurface.withValues(alpha: 0.5),
                      ),
                    ),
                    title: Text(
                      "Title",
                      style: textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: colorScheme.onSurface,
                      ),
                    ),
                    subtitle: Text(
                      "Message body text\n10:10, 20.11.2028",
                      style: textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
