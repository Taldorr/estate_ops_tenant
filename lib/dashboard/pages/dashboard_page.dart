import 'package:estate_ops_tenant/app.dart';
import 'package:estate_ops_tenant/dashboard/widgets/welcome_widget.dart';
import 'package:estate_ops_tenant/inquiry/pages/select_inquirytype.page.dart';
import 'package:estate_ops_tenant/util/widgets/page.dart';
import 'package:estate_ops_tenant/util/widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../documents/pages/documents_page.dart';
import '../../mailbox/bloc/bloc.dart';
import '../../mailbox/widgets/mailbox_overview.dart';
import '../../notifications/bloc/notifications_bloc.dart';

class DashboardPage extends StatefulWidget {
  static const route = '/dashboard';

  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

_initNotifications(BuildContext context) async {
  final status = await Permission.notification.request();
  if (status.isGranted) {
    print('Notification permissions granted');
    context.read<NotificationsBloc>().add(const InitNotificationsEvent());
  } else {
    print('Notification permissions denied');
  }
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    context.read<MailboxBloc>().add(const LoadMailboxEvent());
    _initNotifications(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return EOPage(
      padding: 0,
      title: AppLocalizations.of(context)!.dashboard,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const WelcomeWidget(),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: EOSectionHeader(
                title: AppLocalizations.of(context)!.currentEvents),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: EOMailboxOverview(
              limit: 3,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ElevatedButton(
              onPressed: () => navigatorKey.currentState
                  ?.pushNamed(SelectInquiryTypePage.route),
              child: Text(AppLocalizations.of(context)!.reportConcern),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: OutlinedButton(
              onPressed: () =>
                  navigatorKey.currentState?.pushNamed(DocumentsPage.route),
              child: Text(AppLocalizations.of(context)!.myDocuments),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
