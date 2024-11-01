import 'package:estate_ops_tenant/app.dart';
import 'package:estate_ops_tenant/mailbox/bloc/mailbox_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../auth/pages/profile_page.dart';
import '../../dashboard/pages/dashboard_page.dart';
import '../../mailbox/pages/mailbox.page.dart';
import '../constants.dart';

class EONavbar extends StatelessWidget {
  final int selectedIndex;
  const EONavbar({super.key, this.selectedIndex = 0});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: Constants.terciary,
      indicatorColor: Constants.whitey.withOpacity(0.5),
      indicatorShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      selectedIndex: selectedIndex,
      onDestinationSelected: (idx) {
        if (idx == 0) {
          navigatorKey.currentState?.pushNamed(ProfilePage.route);
        } else if (idx == 1) {
          navigatorKey.currentState?.pushNamed(DashboardPage.route);
        } else if (idx == 2) {
          navigatorKey.currentState?.pushNamed(MailboxPage.route);
        }
      },
      destinations: [
        NavigationDestination(
          icon: Icon(
            Icons.account_circle_outlined,
            color: selectedIndex == 0 ? Constants.secondary : null,
          ),
          label: AppLocalizations.of(context)!.profile,
        ),
        NavigationDestination(
            icon: Icon(
              Icons.home_outlined,
              color: selectedIndex == 1 ? Constants.secondary : null,
            ),
            label: AppLocalizations.of(context)!.dashboard),
        NavigationDestination(
          icon: BlocBuilder<MailboxBloc, MailboxState>(
            builder: (context, state) {
              if (state.unreadMessages.isEmpty) {
                return Icon(
                  Icons.mail_outline_rounded,
                  color: selectedIndex == 2 ? Constants.secondary : null,
                );
              }
              return Badge(
                backgroundColor: Constants.secondary,
                label: Text(state.unreadMessages.length.toString()),
                child: Icon(
                  Icons.mail_outline_rounded,
                  color: selectedIndex == 2 ? Constants.secondary : null,
                ),
              );
            },
          ),
          label: AppLocalizations.of(context)!.mailbox,
        ),
      ],
    );
  }
}
