import 'package:estate_ops_tenant/auth/auth.dart';
import 'package:estate_ops_tenant/util/constants.dart';
import 'package:estate_ops_tenant/util/widgets/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageOption {
  String title;
  String iconPath;
  Locale locale;

  LanguageOption(this.title, this.iconPath, this.locale);
}

class LanguagePage extends StatelessWidget {
  static const route = '/language';
  const LanguagePage({super.key});

  List<LanguageOption> options(BuildContext context) => [
        LanguageOption("Deutsch", "assets/icons/de.png", const Locale('de')),
        LanguageOption("English", "assets/icons/en.png", const Locale('en')),
        LanguageOption("Español", "assets/icons/es.png", const Locale('es')),
        LanguageOption("Polski", "assets/icons/pl.png", const Locale('pl')),
        LanguageOption("Українська", "assets/icons/ua.png", const Locale('ua')),
      ];

  void _onLanguage(BuildContext context, LanguageOption option) {
    context.read<AuthBloc>().add(ChangeLanguageEvent(option.locale));
    Navigator.of(context).pop();
  }

  Widget _buildListElement(BuildContext context, int index) => ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(options(context)[index].title,
            style: Theme.of(context).textTheme.bodyMedium),
        onTap: () => _onLanguage(context, options(context)[index]),
        trailing: const Icon(Icons.arrow_forward_ios),
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
