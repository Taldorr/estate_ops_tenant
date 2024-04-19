import 'package:flutter/material.dart';

import 'navbar.dart';

class EOPage extends StatelessWidget {
  final Widget child;
  final String? title;
  final int navIndex;
  final bool hideBackButton;
  const EOPage({
    super.key,
    required this.child,
    this.title,
    this.navIndex = 1,
    this.hideBackButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: !hideBackButton,
        title: title != null
            ? Text(
                title!,
                textAlign: TextAlign.start,
              )
            : null,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: child,
        ),
      ),
      bottomNavigationBar: EONavbar(
        selectedIndex: navIndex,
      ),
    );
  }
}
