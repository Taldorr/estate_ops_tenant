import 'package:estate_ops_tenant/mailbox/bloc/bloc.dart';
import 'package:estate_ops_tenant/mailbox/widgets/mailbox_overview.dart';
import 'package:estate_ops_tenant/util/widgets/page.dart';
import 'package:estate_ops_tenant/util/widgets/section_header.dart';
import 'package:flutter/material.dart';

import '../../inquiry/pages/select_inquirytype.page.dart';
import '../../main.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MailboxPage extends StatefulWidget {
  static const route = '/mailbox';

  const MailboxPage({super.key});

  @override
  State<MailboxPage> createState() => _MailboxPageState();
}

class _MailboxPageState extends State<MailboxPage> {
  @override
  void initState() {
    context.read<MailboxBloc>().add(const LoadMailboxEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return EOPage(
      title: AppLocalizations.of(context)!.mailbox,
      navIndex: 2,
      child: BlocBuilder<MailboxBloc, MailboxState>(builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             EOSectionHeader(title: AppLocalizations.of(context)!.lastMessages),
            const EOMailboxOverview(),
            const Spacer(),
            ElevatedButton(
              onPressed: () => navigatorKey.currentState?.pushNamed(SelectInquiryTypePage.route),
              child:  Text(AppLocalizations.of(context)!.reportConcern),
            ),
          ],
        );
      }),
    );
  }
}
