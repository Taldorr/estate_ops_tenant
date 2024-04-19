import 'package:flutter/material.dart';

import '../constants.dart';

class EOCard extends StatelessWidget {
  final Widget? child;
  const EOCard({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          boxShadow: const [Constants.cardShadow]),
      child: child,
    );
  }
}
