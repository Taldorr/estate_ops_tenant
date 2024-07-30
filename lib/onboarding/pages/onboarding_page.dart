import 'package:estate_ops_tenant/auth/auth.dart';
import 'package:estate_ops_tenant/auth/pages/signup_page.dart';
import 'package:estate_ops_tenant/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../util/widgets/card.dart';

class OnboardingPage extends StatefulWidget {
  static String route = '/onboarding';
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int _index = 0;

  get texts {
    return [
      AppLocalizations.of(context)!.onboarding1,
      AppLocalizations.of(context)!.onboarding2,
      AppLocalizations.of(context)!.onboarding3,
      AppLocalizations.of(context)!.onboarding4,
    ];
  }

  void _complete() {
    context.read<AuthBloc>().add(const OnboardingCompletedEvent());
    Navigator.of(context).popAndPushNamed(SignupPage.route);
  }

  Widget _buildNavElement() {
    if (_index == texts.length - 1) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ElevatedButton(
          onPressed: () => _complete(),
          child: Text(AppLocalizations.of(context)!.toAPP),
        ),
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        texts.length,
        (index) => Padding(
          padding: const EdgeInsets.all(5),
          child: CircleAvatar(
            radius: 5,
            backgroundColor: _index == index
                ? Theme.of(context).primaryColor
                : Constants.whitey,
          ),
        ),
      ),
    );
  }

  Widget _buildContent(int index) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EOCard(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/images/onboarding_${index + 1}.png',
                    height: 200,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    texts[index],
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Container(
        decoration: const BoxDecoration(
          gradient: Constants.backgroundGradient,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: PageView.builder(
                      itemCount: texts.length,
                      onPageChanged: (value) => setState(() => _index = value),
                      itemBuilder: (context, index) => _buildContent(index),
                    ),
                  ),
                  _buildNavElement(),
                  const SizedBox(height: 30),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      side: BorderSide.none,
                      foregroundColor: Theme.of(context).primaryColor,
                    ),
                    onPressed: () => _complete(),
                    child: Text(AppLocalizations.of(context)!.skip),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
