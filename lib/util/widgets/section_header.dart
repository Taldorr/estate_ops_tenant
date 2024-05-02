import 'package:flutter/material.dart';

import 'divider.dart';
import 'spacer.dart';

class EOSectionHeader extends StatelessWidget {
  final String title;
  final Function? onTap;
  const EOSectionHeader({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap != null ? () => onTap!() : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: Theme.of(context).textTheme.titleMedium),
              if (onTap != null) const Icon(Icons.arrow_forward_ios),
            ],
          ),
          const EOSpacer(14),
          const EODivider(),
          const EOSpacer(14),
        ],
      ),
    );
  }
}
