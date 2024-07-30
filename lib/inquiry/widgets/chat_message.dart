import 'package:estate_ops_tenant/util/date_helper.dart';
import 'package:flutter/material.dart';

import '../models/inquiry_message.model.dart';

class EOChatMessage extends StatelessWidget {
  final InquiryMessageModel model;
  const EOChatMessage({super.key, required this.model});

  Widget _buildAttachments() {
    if (model.documents.isEmpty) return const SizedBox();
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(model.documents.length.toString()),
        const Icon(
          Icons.attach_file,
          size: 14,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!model.showLeft) const SizedBox(width: 32),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card.outlined(
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(model.content ?? ""),
                      _buildAttachments(),
                      Text(
                        DateHelper.format(model.createdAt, withTime: true),
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  model.authorLabel ?? "",
                  textAlign: model.showLeft ? TextAlign.start : TextAlign.end,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
            ],
          ),
        ),
        if (model.showLeft) const SizedBox(width: 32),
      ],
    );
  }
}
