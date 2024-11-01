import 'package:estate_ops_tenant/util/widgets/gradient_wrapper.dart';
import 'package:flutter/material.dart';

import 'navbar.dart';

class EOPage extends StatelessWidget {
  final Widget child;
  final String? title;
  final int navIndex;
  final bool hideBackButton;
  final bool hideNavbar;
  final bool gradientBackground;
  final double padding;
  const EOPage({
    super.key,
    required this.child,
    this.title,
    this.navIndex = 1,
    this.hideBackButton = true,
    this.gradientBackground = false,
    this.hideNavbar = false,
    this.padding = 25,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: gradientBackground
          ? GradientWrapper(child: _innerBody())
          : _innerBody(),
      bottomNavigationBar: hideNavbar
          ? null
          : EONavbar(
              selectedIndex: navIndex,
            ),
    );
  }

  Widget _innerBody() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: child,
      ),
    );
  }
}
