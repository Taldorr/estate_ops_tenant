import 'package:flutter/material.dart';

class EOSpacer extends StatelessWidget {
  final double size;
  const EOSpacer(
    this.size, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
    );
  }
}
