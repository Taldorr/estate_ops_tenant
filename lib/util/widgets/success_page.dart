import 'package:estate_ops_tenant/util/constants.dart';
import 'package:estate_ops_tenant/util/widgets/card.dart';
import 'package:estate_ops_tenant/util/widgets/page.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  final String title;
  final String content;

  final String primaryLabel;
  final void Function() primaryAction;

  final String? secondaryLabel;
  final void Function()? secondaryAction;

  const SuccessPage(
      {super.key,
      required this.title,
      required this.content,
      required this.primaryLabel,
      required this.primaryAction,
      this.secondaryLabel,
      this.secondaryAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: Constants.backgroundGradient,
      ),
      child: EOPage(
        gradientBackground: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            EOCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Icon(Icons.check_rounded,
                        color: Constants.success, size: 40),
                  ),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.labelLarge,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    content,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: primaryAction,
              child: Text(primaryLabel),
            ),
            if (secondaryLabel != null)
              TextButton(
                onPressed: secondaryAction,
                child: Text(secondaryLabel!),
              ),
          ],
        ),
      ),
    );
  }
}
