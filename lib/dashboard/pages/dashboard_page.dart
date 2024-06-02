import 'package:estate_ops_tenant/app.dart';
import 'package:estate_ops_tenant/inquiry/pages/select_inquirytype.page.dart';
import 'package:estate_ops_tenant/util/widgets/page.dart';
import 'package:estate_ops_tenant/util/widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    context.read<MailboxBloc>().add(const LoadMailboxEvent());
    context.read<NotificationsBloc>().add(const InitNotificationsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return EOPage(
      title: AppLocalizations.of(context)!.dashboard,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          EOSectionHeader(title: AppLocalizations.of(context)!.currentEvents),
          const EOMailboxOverview(
            limit: 3,
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () => navigatorKey.currentState
                ?.pushNamed(SelectInquiryTypePage.route),
            child: Text(AppLocalizations.of(context)!.reportConcern),
          ),
          OutlinedButton(
            onPressed: () =>
                navigatorKey.currentState?.pushNamed(DocumentsPage.route),
            child: Text(AppLocalizations.of(context)!.myDocuments),
          ),
        ],
      ),
    );
  }
}
