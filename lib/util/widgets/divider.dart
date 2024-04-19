import 'package:flutter/material.dart';

class EODivider extends StatelessWidget {
  const EODivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
