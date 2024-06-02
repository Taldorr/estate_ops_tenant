import 'package:estate_ops_tenant/api/outputs/swagger.enums.swagger.dart';
import 'package:estate_ops_tenant/app.dart';
import 'package:estate_ops_tenant/inquiry/bloc/inquiry_bloc.dart';
import 'package:estate_ops_tenant/inquiry/models/inquiry.type.enum.dart';
import 'package:estate_ops_tenant/inquiry/pages/chat.page.dart';
import 'package:estate_ops_tenant/inquiry/pages/new_inquiry.page.dart';
import 'package:estate_ops_tenant/util/widgets/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../util/constants.dart';

class SelectInquiryTypePage extends StatefulWidget {
  static const route = '/select-inquiry-type';
  const SelectInquiryTypePage({super.key});

  @override
  State<SelectInquiryTypePage> createState() => _SelectInquiryTypePageState();
}

class _SelectInquiryTypePageState extends State<SelectInquiryTypePage> {
  String _searchValue = '';

  @override
  void initState() {
    super.initState();
  }

  void _onTap(InquiryType selected) {
    if ([InquiryType.question, InquiryType.freeMessage].contains(selected)) {
      context.read<InquiryBloc>().add(const UnselectCurrentEvent());
      navigatorKey.currentState?.push(MaterialPageRoute(builder: (_) {
        return ChatPage(type: selected);
      }));
      return;
    }
    navigatorKey.currentState?.pushNamed(
      NewInquiryPage.route,
      arguments: selected,
    );
  }

  List<InquiryType> get options {
    List<InquiryType> values = [...InquiryType.values];
    values.removeWhere(
        (element) => element == InquiryType.swaggerGeneratedUnknown);

    values.removeWhere((element) =>
        !element.toLocalString(context).toLowerCase().contains(_searchValue));

    values.sort(
        (a, b) => a.toLocalString(context).compareTo(b.toLocalString(context)));
    return values;
  }

  Widget _buildListElement(BuildContext context, InquiryType option) =>
      ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(option.toLocalString(context),
            style: Theme.of(context).textTheme.bodyMedium),
        onTap: () => _onTap(option),
        trailing: const Icon(Icons.arrow_forward_ios),
      );

  @override
  Widget build(BuildContext context) {
    return EOPage(
      title: AppLocalizations.of(context)!.selectConcern,
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: AppLocalizations.of(context)!.searchConcern,
              prefixIcon: const Icon(Icons.search_rounded),
            ),
            onChanged: (value) =>
                setState(() => _searchValue = value.toLowerCase()),
          ),
          ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) => Divider(
              color: Constants.blackey.withOpacity(0.3),
            ),
            itemBuilder: (_, index) =>
                _buildListElement(context, options[index]),
            itemCount: options.length,
          ),
        ],
      ),
    );
  }
}
