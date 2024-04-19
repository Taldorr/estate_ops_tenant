
import 'package:estate_ops_tenant/util/widgets/navbar.dart';
import 'package:estate_ops_tenant/util/widgets/section_header.dart';
import 'package:flutter/material.dart';

import '../../documents/pages/documents_page.dart';
import '../../main.dart';
import '../../util/widgets/spacer.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfilePage extends StatelessWidget {
  static const route = '/profile';
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(AppLocalizations.of(context)!.profile , style: Theme.of(context).textTheme.titleLarge),
              const EOSpacer(40),
               EOSectionHeader(title: AppLocalizations.of(context)!.myApartment),
              const Spacer(),
              ElevatedButton(
                onPressed: () => navigatorKey.currentState?.pushNamed(DocumentsPage.route),
                child:  Text(AppLocalizations.of(context)!.myDocuments),
              ),
               OutlinedButton(
                onPressed: null,
                child: Text(AppLocalizations.of(context)!.appSettings),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const EONavbar(
        selectedIndex: 0,
      ),
    );
  }
}
