import 'package:estate_ops_tenant/dashboard/pages/dashboard_page.dart';
import 'package:estate_ops_tenant/documents/pages/documents_page.dart';
import 'package:estate_ops_tenant/documents/pages/request_document_page.dart';
import 'package:estate_ops_tenant/util/constants.dart';
import 'package:estate_ops_tenant/util/widgets/card.dart';
import 'package:estate_ops_tenant/util/widgets/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DocumentRequestSentPage extends StatelessWidget {
  static const route = '/document-requested';
  const DocumentRequestSentPage({super.key});

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
                    AppLocalizations.of(context)!.documentRequested,
                    style: Theme.of(context).textTheme.labelLarge,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    AppLocalizations.of(context)!.documentRequestedText,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .popUntil(ModalRoute.withName(DashboardPage.route));
                Navigator.of(context).pushNamed(DocumentsPage.route);
              },
              child: Text(AppLocalizations.of(context)!.backToDocuments),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .popUntil(ModalRoute.withName(DocumentsPage.route));
                Navigator.of(context).pushNamed(RequestDocumentPage.route);
              },
              child: Text(AppLocalizations.of(context)!.requestAnotherDocument),
            ),
          ],
        ),
      ),
    );
  }
}
