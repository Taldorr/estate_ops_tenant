import 'package:estate_ops_tenant/util/constants.dart';
import 'package:flutter/material.dart';

class GradientWrapper extends StatelessWidget {
  final Widget child;
  const GradientWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: Constants.gradient2,
      ),
      child: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: Constants.gradient1,
        ),
        child: child,
      ),
    );
  }
}
