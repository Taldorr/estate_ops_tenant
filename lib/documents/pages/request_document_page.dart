import 'package:estate_ops_tenant/api/outputs/swagger.swagger.dart';
import 'package:estate_ops_tenant/documents/pages/document_request_sent_page.dart';
import 'package:estate_ops_tenant/inquiry/bloc/inquiry_bloc.dart';
import 'package:estate_ops_tenant/util/widgets/page.dart';
import 'package:estate_ops_tenant/util/widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class RequestDocumentPage extends StatefulWidget {
  static const route = '/request-document';
  const RequestDocumentPage({super.key});

  @override
  State<RequestDocumentPage> createState() => _RequestDocumentPageState();
}

class _RequestDocumentPageState extends State<RequestDocumentPage> {
  final formKey = GlobalKey<FormBuilderState>();

  void _onSubmit() {
    if (!formKey.currentState!.saveAndValidate()) {
      return;
    }
    context.read<InquiryBloc>().add(
          RequestDocumentEvent(
            formKey.currentState!.value['docType'],
            formKey.currentState!.value['description'],
          ),
        );
    Navigator.of(context).pushNamed(DocumentRequestSentPage.route);
  }

  List<DropdownMenuItem<DocumentType>> get items => DocumentType.values
          .where((t) => t != DocumentType.swaggerGeneratedUnknown)
          .map((type) {
        String label;
        switch (type) {
          case DocumentType.landlordCertificate:
            label = AppLocalizations.of(context)!.landlord_certifictate;
            break;
          case DocumentType.rentingAgreement:
            label = AppLocalizations.of(context)!.renting_agreement;
            break;
          case DocumentType.other:
            label = AppLocalizations.of(context)!.other;
            break;
          default:
            label = type.toString();
        }

        return DropdownMenuItem<DocumentType>(
          value: type,
          child: Text(label),
        );
      }).toList();

  @override
  Widget build(BuildContext context) {
    return EOPage(
      hideBackButton: false,
      title: AppLocalizations.of(context)!.requestDocument,
      child: FormBuilder(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FormBuilderDropdown<DocumentType>(
              name: "docType",
              items: items,
              validator: FormBuilderValidators.required(),
              decoration: InputDecoration(
                labelText: '${AppLocalizations.of(context)!.selectDocument}*',
              ),
            ),
            const EOSpacer(20),
            Text(AppLocalizations.of(context)!.requestDocumentHint,
                style: Theme.of(context).textTheme.labelSmall),
            const EOSpacer(5),
            FormBuilderTextField(
              decoration: InputDecoration(
                labelText: '${AppLocalizations.of(context)!.description}*',
                border: const OutlineInputBorder(),
              ),
              name: 'description',
              minLines: 3,
              maxLines: 5,
              validator: FormBuilderValidators.maxLength(500),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: _onSubmit,
              child: Text(AppLocalizations.of(context)!.requestDocument),
            ),
          ],
        ),
      ),
    );
  }
}
