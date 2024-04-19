import 'package:cross_file/cross_file.dart';
import 'package:estate_ops_tenant/auth/auth.dart';
import 'package:estate_ops_tenant/dashboard/pages/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../api/outputs/swagger.swagger.dart';
import '../../documents/repositories/documents_repository.dart';
import '../../util/constants.dart';
import '../../util/widgets/card.dart';
import '../../util/widgets/page.dart';
import '../models/inquiry.type.enum.dart';
import '../repositories/inquiry_repository.dart';
import '../widgets/damage_details.dart';

class NewInquiryPage extends StatefulWidget {
  static const route = '/new-inquiry';

  const NewInquiryPage({super.key});

  @override
  State<NewInquiryPage> createState() => _NewInquiryPageState();
}

class _NewInquiryPageState extends State<NewInquiryPage> {
  final formKey = GlobalKey<FormBuilderState>();

  bool isLoading = false;
  bool isDone = false;

  // TODO: refactor
  void _onSubmit() async {
    if (!formKey.currentState!.saveAndValidate()) return;

    setState(() => isLoading = true);

    final description = formKey.currentState?.value['description'];
    final date = formKey.currentState?.value['date'];
    final attachments =
        (formKey.currentState?.value['attachments'] as List<dynamic>? ?? [])
            .map<XFile>((a) => a as XFile)
            .toList();

    //TODO: dont use
    final dto = CreateInquiryDto(type: CreateInquiryDtoType.damage, messages: [
      CreateInquiryMessageDto(
        content: description,
        isAIGenerated: false,
        authorAccountId: '',
        inquiryId: "INVALID",
      )
    ]
        //TODO createdById
        );

    // avoiding bloc to accurately display loading state
    try {
      final inquiry =
          await context.read<InquiryRepository>().createInquiry(dto);

      if (attachments.isNotEmpty) {
        // ignore: use_build_context_synchronously
        await context.read<DocumentsRepository>().uploadAttachments(
            inquiry != null ? [inquiry.messages[0].id] : [], attachments);
      }
      setState(() => isDone = true);
    } catch (e) {
      print(e);
    }
    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    final selectedType =
        ModalRoute.of(context)!.settings.arguments as InquiryType;

    return EOPage(
      hideBackButton: false,
      title: _buildTitle(selectedType),
      child: FormBuilder(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: _buildContent(selectedType)),
            if (!isDone && !isLoading)
              ElevatedButton(
                onPressed: _onSubmit,
                child: Text(AppLocalizations.of(context)!.reportDamage),
              ),
          ],
        ),
      ),
    );
  }

  String _buildTitle(InquiryType type) {
    switch (type) {
      case InquiryType.complaint:
        return AppLocalizations.of(context)!.reportComplaint;
      case InquiryType.damage:
        return AppLocalizations.of(context)!.reportDamage;
      case InquiryType.other:
        return AppLocalizations.of(context)!.other;
      default:
        throw Exception('Unknown InquiryType');
    }
  }

  Widget _buildContent(InquiryType type) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    } else if (isDone) {
      return _buildDoneScreen();
    }
    switch (type) {
      case InquiryType.damage:
        return const EODamageDetails();

      default:
        throw Exception('Unknown InquiryType');
    }
  }

  // TODO: refactor
  Widget _buildDoneScreen() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Spacer(),
        EOCard(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Icon(Icons.check_rounded,
                    color: Constants.success, size: 40),
              ),
              Text(
                AppLocalizations.of(context)!.damageReported,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 20),
              Text(
                AppLocalizations.of(context)!.damageReportedText,
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ],
          ),
        ),
        const Spacer(),
        ElevatedButton(
          onPressed: () => Navigator.of(context)
              .popUntil(ModalRoute.withName(DashboardPage.route)),
          child: Text(AppLocalizations.of(context)!.backToDashboard),
        ),
      ],
    );
  }
}
