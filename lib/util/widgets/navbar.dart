import 'package:estate_ops_tenant/mailbox/bloc/mailbox_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../auth/pages/profile_page.dart';
import '../../dashboard/pages/dashboard_page.dart';
import '../../mailbox/pages/mailbox.page.dart';
import '../../main.dart';
import '../constants.dart';

class EONavbar extends StatelessWidget {
  final int selectedIndex;
  const EONavbar({super.key, this.selectedIndex = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: Constants.backgroundGradient,
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
      ),
      child: NavigationBar(
        backgroundColor: Constants.whitey.withOpacity(0.5),
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
          const NavigationDestination(
            icon: Icon(Icons.account_circle_outlined),
            label: "Profil",
            enabled: false,
          ),
          const NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: "Dashboard",
          ),
          NavigationDestination(
            icon: BlocBuilder<MailboxBloc, MailboxState>(
              builder: (context, state) {
                return Badge(
                  backgroundColor: Constants.primary,
                  label: Text(state.unreadMessages.length.toString()),
                  child: const Icon(Icons.mail_outline_rounded),
                );
              },
            ),
            label: "Briefkasten",
          ),
        ],
      ),
    );
  }
}
