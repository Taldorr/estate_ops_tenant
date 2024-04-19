
import 'package:estate_ops_tenant/util/widgets/navbar.dart';
import 'package:estate_ops_tenant/util/widgets/section_header.dart';
import 'package:flutter/material.dart';

import '../../documents/pages/documents_page.dart';
import '../../main.dart';
import '../../util/widgets/spacer.dart';

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
              Text("Profil", style: Theme.of(context).textTheme.titleLarge),
              const EOSpacer(40),
              const EOSectionHeader(title: "Meine Wohnung"),
              const Spacer(),
              ElevatedButton(
                onPressed: () => navigatorKey.currentState?.pushNamed(DocumentsPage.route),
                child: const Text("Meine Dokumente"),
              ),
              const OutlinedButton(
                onPressed: null,
                child: Text("App-Einstellungen"),
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
