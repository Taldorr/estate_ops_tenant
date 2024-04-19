import 'package:flutter/material.dart';

import '../models/inquiry_message.model.dart';
import 'chat_message.dart';

class EOChat extends StatelessWidget {
  final List<InquiryMessageModel> messages;

  const EOChat({
    super.key,
    required this.messages,
  });

  get sortedMessages => messages..sort((a, b) => a.createdAt.compareTo(b.createdAt));

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) => EOChatMessage(model: sortedMessages[index]),
    );
  }
}
