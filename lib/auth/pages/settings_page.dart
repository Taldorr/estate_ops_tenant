import 'package:estate_ops_tenant/app.dart';
import 'package:estate_ops_tenant/auth/bloc/auth_bloc.dart';
import 'package:estate_ops_tenant/auth/pages/language_page.dart';
import 'package:estate_ops_tenant/util/constants.dart';
import 'package:estate_ops_tenant/util/widgets/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SettingsOption {
  String title;
  Function handler;

  SettingsOption(this.title, this.handler);
}

class SettingsPage extends StatelessWidget {
  static const route = '/settings';

  const SettingsPage({super.key});

  List<SettingsOption> options(BuildContext context) => [
        SettingsOption(AppLocalizations.of(context)!.appLanguage, _onLanguage),
        SettingsOption(AppLocalizations.of(context)!.privacyPolicy,
            () => _launchUrl(Constants.dataPrivacyUrl)),
        SettingsOption(AppLocalizations.of(context)!.imprint,
            () => _launchUrl(Constants.touUrl)),
        SettingsOption(
            AppLocalizations.of(context)!.logout, () => _onLogout(context)),
      ];

  Future<void> _launchUrl(String url) async {
    await launchUrlString(url);
  }

  Future<void> _onLogout(BuildContext context) async {
    context.read<AuthBloc>().add(const LogoutAuthEvent());
  }

  void _onLanguage() {
    navigatorKey.currentState?.pushNamed(LanguagePage.route);
  }

  Widget _buildListElement(BuildContext context, int index) => ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          options(context)[index].title,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(fontWeight: FontWeight.w500),
        ),
        onTap: () => options(context)[index].handler(),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 20,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return EOPage(
      title: AppLocalizations.of(context)!.appSettings,
      child: Column(
        children: [
          ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) => Divider(
              color: Constants.blackey.withOpacity(0.3),
            ),
            itemBuilder: _buildListElement,
            itemCount: options(context).length,
          ),
        ],
      ),
    );
  }
}
