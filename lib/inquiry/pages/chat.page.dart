import 'package:estate_ops_tenant/api/outputs/swagger.swagger.dart';
import 'package:estate_ops_tenant/auth/auth.dart';
import 'package:estate_ops_tenant/inquiry/bloc/inquiry_bloc.dart';
import 'package:estate_ops_tenant/inquiry/models/inquiry.type.enum.dart';
import 'package:estate_ops_tenant/inquiry/widgets/chat.dart';
import 'package:estate_ops_tenant/util/widgets/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../util/widgets/divider.dart';
import '../../util/widgets/spacer.dart';
import '../models/inquiry_message.model.dart';

class ChatPage extends StatefulWidget {
  static const route = '/chat';
  final InquiryType? type;
  const ChatPage({super.key, this.type});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final formKey = GlobalKey<FormBuilderState>();

  defaultMessage() {
    return InquiryMessageModel(
      id: "INVALID",
      content: AppLocalizations.of(context)!.helloHowCanIHelpYou,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      authorLabel: "EstateOps AI",
      showLeft: false,
      isAIGenerated: true,
    );
  }

  sendMessage() {
    if (!formKey.currentState!.saveAndValidate()) return;

    final current = context.read<InquiryBloc>().state.current;

    if (current == null) {
      // new inquiry, so we assume a type is provided via the constructor
      context.read<InquiryBloc>().add(
            CreateInquiryEvent(
              CreateInquiryDto(
                  type: widget.type!,
                  description: formKey.currentState!.value['message']),
              messageDtos: [
                CreateInquiryMessageDto(
                  // will be replaced by the real id in the bloc
                  inquiryId: "INVALID",
                  content: AppLocalizations.of(context)!.helloHowCanIHelpYou,
                  isAIGenerated: true,
                ),
                CreateInquiryMessageDto(
                  // will be replaced by the real id in the bloc
                  inquiryId: "INVALID",
                  content: formKey.currentState!.value['message'],
                  authorAccountId: context.read<AuthBloc>().state.accountId,
                  isAIGenerated: false,
                ),
              ],
            ),
          );
    } else {
      // existing inquiry, so we just add the message
      context.read<InquiryBloc>().add(
            CreateMessagesEvent([
              CreateInquiryMessageDto(
                inquiryId: current.id,
                content: formKey.currentState!.value['message'],
                authorAccountId: context.read<AuthBloc>().state.accountId,
                isAIGenerated: false,
              ),
            ]),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InquiryBloc, InquiryState>(
      builder: (context, state) {
        final msgs = state.current?.messages ?? [defaultMessage()];
        return EOPage(
          title: state.current?.type.toLocalString(context) ??
              InquiryType.question.toLocalString(context),
          child: FormBuilder(
            key: formKey,
            child: Column(
              children: [
                const EODivider(),
                const EOSpacer(14),
                Expanded(child: EOChat(messages: msgs)),
                _buildInput(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildInput() {
    return FormBuilderTextField(
      decoration: InputDecoration(
        hintText: AppLocalizations.of(context)!.message,
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          onPressed: sendMessage,
          icon: const Icon(Icons.send),
        ),
      ),
      name: 'message',
      minLines: 2,
      maxLines: 5,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.maxLength(500),
      ]),
    );
  }
}
