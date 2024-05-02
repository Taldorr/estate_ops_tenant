import 'package:estate_ops_tenant/auth/auth.dart';
import 'package:estate_ops_tenant/auth/pages/settings_page.dart';
import 'package:estate_ops_tenant/util/widgets/navbar.dart';
import 'package:estate_ops_tenant/util/widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../documents/pages/documents_page.dart';
import '../../main.dart';
import '../../util/widgets/spacer.dart';
import 'edit_profile_page.dart';

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
          child: BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(AppLocalizations.of(context)!.profile,
                    style: Theme.of(context).textTheme.titleLarge),
                const EOSpacer(40),
                EOSectionHeader(
                    title: AppLocalizations.of(context)!.myApartment),
                const EOSpacer(20),
                Text(
                    '${state.profile?.street}, ${state.profile?.zip} ${state.profile?.city}'),
                const EOSpacer(40),
                EOSectionHeader(
                  title: AppLocalizations.of(context)!.personalData,
                  onTap: () => navigatorKey.currentState
                      ?.pushNamed(EditProfilePage.route),
                ),
                const EOSpacer(20),
                Text(
                    '${AppLocalizations.of(context)!.name}: ${state.profile?.firstName} ${state.profile?.lastName}'),
                const EOSpacer(10),
                Text(
                    '${AppLocalizations.of(context)!.email}: ${state.profile?.email ?? '-'}'),
                const EOSpacer(10),
                Text(
                    '${AppLocalizations.of(context)!.phone}: ${state.profile?.phone ?? '-'}'),
                const Spacer(),
                ElevatedButton(
                  onPressed: () =>
                      navigatorKey.currentState?.pushNamed(DocumentsPage.route),
                  child: Text(AppLocalizations.of(context)!.myDocuments),
                ),
                OutlinedButton(
                  onPressed: () =>
                      navigatorKey.currentState?.pushNamed(SettingsPage.route),
                  child: Text(AppLocalizations.of(context)!.appSettings),
                ),
              ],
            );
          }),
        ),
      ),
      bottomNavigationBar: const EONavbar(
        selectedIndex: 0,
      ),
    );
  }
}
