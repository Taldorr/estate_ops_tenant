import 'package:cross_file/cross_file.dart';
import 'package:estate_ops_tenant/auth/auth.dart';
import 'package:estate_ops_tenant/dashboard/pages/dashboard_page.dart';
import 'package:estate_ops_tenant/inquiry/widgets/complaint_details.dart';
import 'package:estate_ops_tenant/inquiry/widgets/missing_service_details.dart';
import 'package:estate_ops_tenant/inquiry/widgets/name_change_details.dart';
import 'package:estate_ops_tenant/util/widgets/success_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../api/outputs/swagger.swagger.dart';
import '../../documents/repositories/documents_repository.dart';
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

  void _goToDoneScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SuccessPage(
          title: AppLocalizations.of(context)!.concernReported,
          content: AppLocalizations.of(context)!.concernReportedText,
          primaryLabel: AppLocalizations.of(context)!.backToDashboard,
          primaryAction: () {
            Navigator.of(context)
                .popUntil(ModalRoute.withName(DashboardPage.route));
          },
        ),
      ),
    );
  }

  void _onSubmit(InquiryType type) async {
    if (!formKey.currentState!.saveAndValidate()) return;

    setState(() => isLoading = true);

    final dto = CreateInquiryDto(
      type: type,
      date: formKey.currentState?.value['date'],
      description: formKey.currentState?.value['description'],
    );

    // avoiding bloc to accurately display loading state
    try {
      final inquiry =
          await context.read<InquiryRepository>().createInquiry(dto);

      final attachments =
          (formKey.currentState?.value['attachments'] as List<dynamic>? ?? [])
              .map<XFile>((a) => a as XFile)
              .toList();

      // if attachments are present, upload them and connect them to the
      // first message of the newly created inquiry
      if (attachments.isNotEmpty &&
          inquiry != null &&
          inquiry.messages.isNotEmpty) {
        // ignore: use_build_context_synchronously
        final isDemo = context.read<AuthBloc>().state.isDemo;
        // ignore: use_build_context_synchronously
        await context.read<DocumentsRepository>().uploadAttachments(
            [inquiry.messages.first.id], attachments,
            isDemo: isDemo);
      }
      _goToDoneScreen();
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
      title: selectedType.toLocalString(context),
      child: FormBuilder(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: _buildContent(selectedType)),
            if (!isLoading)
              ElevatedButton(
                onPressed: () => _onSubmit(selectedType),
                child: Text(AppLocalizations.of(context)!.send),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(InquiryType type) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    switch (type) {
      case InquiryType.damage:
        return const EODamageDetails();
      case InquiryType.changeName:
        return const EONameChangeDetails();
      case InquiryType.complaint:
        return const EOComplaintDetails();
      case InquiryType.serviceMissing:
        return const EOMissingServiceDetails();

      default:
        throw Exception('Unknown InquiryType');
    }
  }
}
