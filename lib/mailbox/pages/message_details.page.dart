import 'package:estate_ops_tenant/util/widgets/page.dart';
import 'package:flutter/material.dart';

import '../../util/date_helper.dart';
import '../../util/widgets/divider.dart';
import '../../util/widgets/spacer.dart';
import '../models/mailbox_message.dart';

class MessageDetailsPage extends StatelessWidget {
  static const route = '/mailbox/message';

  final MailboxMessage? message;
  const MessageDetailsPage({super.key, this.message});

  Widget _title(BuildContext context) {
    if (message == null) return const SizedBox();

    final title = message?.title ?? "";

    final dateText = Text(
      DateHelper.format(message!.createdAt),
      style: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(color: Theme.of(context).primaryColor),
    );

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            dateText,
          ],
        ),
        const EOSpacer(14),
        const EODivider(),
        const EOSpacer(14),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return EOPage(
      title: "",
      navIndex: 2,
      hideBackButton: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _title(context),
          Text(message?.content ?? ""),
        ],
      ),
    );
  }
}
