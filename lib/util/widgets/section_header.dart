import 'package:flutter/material.dart';

import 'divider.dart';
import 'spacer.dart';

class EOSectionHeader extends StatelessWidget {
  final String title;
  const EOSectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        const EOSpacer(14),
        const EODivider(),
        const EOSpacer(14),
      ],
    );
  }
}
