import 'dart:math';

import 'package:flutter/material.dart';

import '../../util/constants.dart';
import '../../util/date_helper.dart';
import '../bloc/bloc.dart';
import '../models/mailbox_message.dart';

class EOMailboxOverview extends StatelessWidget {
  final int? limit;
  const EOMailboxOverview({super.key, this.limit});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MailboxBloc, MailboxState>(builder: (context, state) {
      final itemCount = limit != null ? min(state.messages.length, limit!) : state.messages.length;
      return ListView.separated(
        shrinkWrap: true,
        itemCount: itemCount,
        itemBuilder: (context, index) => _buildListElement(context, state.messages[index]),
        separatorBuilder: (context, index) => Divider(
          color: Constants.blackey.withOpacity(0.3),
        ),
      );
    });
  }

  Widget _buildListElement(BuildContext context, MailboxMessage message) => ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(message.title, style: Theme.of(context).textTheme.bodyMedium),
        trailing: Text(
          DateHelper.format(message.createdAt),
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Theme.of(context).primaryColor),
        ),
      );
}