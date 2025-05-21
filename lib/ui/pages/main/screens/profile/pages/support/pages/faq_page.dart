
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:langfy/ui/widgets/custom_input2.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({super.key});

  @override
  State<FaqPage> createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  final List<bool> _isExpanded = List.generate(10, (i) => false);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return SingleChildScrollView(
      // Wrap with SingleChildScrollView
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          SizedBox(
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return const SizedBox(width: 8);
              },
              itemCount: 10,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Chip(
                    label: const Text("All"),
                    backgroundColor: colorScheme.primary,
                    labelStyle: textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onPrimary,
                    ),
                    side: BorderSide(
                      color: colorScheme.primary,
                      width: 1,
                    ),
                  );
                }
                return Chip(
                  label: Text("Category $index"),
                  backgroundColor: colorScheme.onPrimary,
                  labelStyle: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.primary,
                  ),
                  side: BorderSide(
                    color: colorScheme.primary,
                    width: 1,
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          const CustomInput2(),
          const SizedBox(height: 16),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) {
              return const SizedBox(height: 16);
            },
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card.outlined(
                margin: EdgeInsets.zero,
                child: ExpansionTile(
                  minTileHeight: 72,
                  title: Text("Title $index"),
                  tilePadding: const EdgeInsets.symmetric(horizontal: 16),
                  onExpansionChanged: (isExpanded) {
                    setState(() {
                      _isExpanded[index] = isExpanded;
                    });
                  },
                  trailing: Icon(
                    _isExpanded[index] ? CupertinoIcons.chevron_up : CupertinoIcons.chevron_down,
                    color: _isExpanded[index] == true ? colorScheme.primary : colorScheme.outline,
                  ),
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "This is the content of the expansion panel.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
