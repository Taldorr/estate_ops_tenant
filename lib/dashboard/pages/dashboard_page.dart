import 'package:estate_ops_tenant/inquiry/pages/select_inquirytype.page.dart';
import 'package:estate_ops_tenant/notifications/bloc/notifications_bloc.dart';
import 'package:estate_ops_tenant/util/widgets/page.dart';
import 'package:estate_ops_tenant/util/widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../documents/pages/documents_page.dart';
import '../../mailbox/bloc/mailbox_bloc.dart';
import '../../mailbox/widgets/mailbox_overview.dart';
import '../../main.dart';

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
      title: "Dashboard",
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const EOSectionHeader(title: "Aktuelles"),
          const EOMailboxOverview(
            limit: 3,
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () => navigatorKey.currentState?.pushNamed(SelectInquiryTypePage.route),
            child: const Text("Anliegen melden"),
          ),
          OutlinedButton(
            onPressed: () => navigatorKey.currentState?.pushNamed(DocumentsPage.route),
            child: const Text("Meine Dokumente"),
          ),
        ],
      ),
    );
  }
}
