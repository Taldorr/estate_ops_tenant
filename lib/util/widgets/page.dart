import 'package:estate_ops_tenant/util/constants.dart';
import 'package:flutter/material.dart';

import 'navbar.dart';

class EOPage extends StatelessWidget {
  final Widget child;
  final String? title;
  final int navIndex;
  final bool hideBackButton;
  final bool hideNavbar;
  final bool gradientBackground;
  const EOPage({
    super.key,
    required this.child,
    this.title,
    this.navIndex = 1,
    this.hideBackButton = true,
    this.gradientBackground = false,
    this.hideNavbar = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: gradientBackground
          ? const BoxDecoration(
              gradient: Constants.backgroundGradient,
            )
          : null,
      child: Scaffold(
        backgroundColor: gradientBackground ? Colors.transparent : null,
        appBar: title != null
            ? AppBar(
                centerTitle: false,
                automaticallyImplyLeading: !hideBackButton,
                title: Text(
                  title!,
                  textAlign: TextAlign.start,
                ),
              )
            : null,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: child,
          ),
        ),
        bottomNavigationBar: hideNavbar
            ? null
            : EONavbar(
                selectedIndex: navIndex,
              ),
      ),
    );
  }
}
