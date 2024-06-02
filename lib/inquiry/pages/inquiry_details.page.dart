import 'package:estate_ops_tenant/inquiry/models/inquiry.status.enum.dart';
import 'package:estate_ops_tenant/inquiry/models/inquiry.type.enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../util/date_helper.dart';
import '../../util/widgets/card.dart';
import '../../util/widgets/page.dart';
import '../bloc/inquiry_bloc.dart';
import '../models/inquiry_message.model.dart';

@Deprecated("Use ChatPage instead")
class InquiryDetailsPage extends StatelessWidget {
  static const route = '/inquiry-details';

  const InquiryDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final inquiryId = ModalRoute.of(context)!.settings.arguments as String;
    return BlocBuilder<InquiryBloc, InquiryState>(
      builder: (context, state) {
        final inquiry =
            state.inquirys.firstWhere((element) => element.id == inquiryId);
        return EOPage(
          title:
              '${inquiry.type.toLocalString(context)} - ${DateHelper.format(inquiry.createdAt)}',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      '${AppLocalizations.of(context)!.createdAt}: ${DateHelper.format(inquiry.createdAt)}'),
                  Text(
                      '${AppLocalizations.of(context)!.status}: ${inquiry.status.toLocalString()}'),
                ],
              ),
              const Divider(),
              for (final message in inquiry.messages)
                _buildMessage(context, message),
            ],
          ),
        );
      },
    );
  }

  Widget _buildMessage(BuildContext context, InquiryMessageModel message) {
    return Row(
      children: [
        const Spacer(),
        Expanded(
          flex: 5,
          child: EOCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(message.content ?? ''),
                Row(
                  children: [
                    Text(
                        '${AppLocalizations.of(context)!.status}: ${message.documents.length}'),
                    ...message.documents
                        .map((e) => Text(e.name.substring(0, 20))),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  DateHelper.format(message.createdAt, withTime: true),
                  textAlign: TextAlign.left,
                ),

                // ...message.documents.map((e) => Text(e.name)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
