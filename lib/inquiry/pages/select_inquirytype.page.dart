import 'package:estate_ops_tenant/inquiry/bloc/inquiry_bloc.dart';
import 'package:estate_ops_tenant/inquiry/pages/chat.page.dart';
import 'package:estate_ops_tenant/inquiry/pages/new_inquiry.page.dart';
import 'package:estate_ops_tenant/main.dart';
import 'package:estate_ops_tenant/util/widgets/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../util/constants.dart';
import '../models/inquiry.type.enum.dart';

class SelectInquiryTypePage extends StatefulWidget {
  static const route = '/select-inquiry-type';
  const SelectInquiryTypePage({super.key});

  @override
  State<SelectInquiryTypePage> createState() => _SelectInquiryTypePageState();
}

class _SelectInquiryTypePageState extends State<SelectInquiryTypePage> {
  List<InquiryType> _filteredOptions = allOptions;

  static List<InquiryType> get allOptions {
    List<InquiryType> sorted = [...InquiryType.values];
    sorted.sort((a, b) => a.toLocalString().compareTo(b.toLocalString()));
    return sorted;
  }

  void _filterOptions(String value) {
    final filtered = allOptions
        .where((element) => element.toLocalString().toLowerCase().contains(value))
        .toList();
    filtered.sort((a, b) => a.toLocalString().compareTo(b.toLocalString()));
    setState(() {
      _filteredOptions = filtered;
    });
  }

  Widget _buildListElement(BuildContext context, int index) => ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(_filteredOptions[index].toLocalString(),
            style: Theme.of(context).textTheme.bodyMedium),
        onTap: () {
          if (_filteredOptions[index] == InquiryType.question) {
            context.read<InquiryBloc>().add(const UnselectCurrentEvent());
            navigatorKey.currentState?.pushNamed(ChatPage.route);
            return;
          }
          navigatorKey.currentState?.pushNamed(
            NewInquiryPage.route,
            arguments: _filteredOptions[index],
          );
        },
        trailing: const Icon(Icons.arrow_forward_ios),
      );

  @override
  Widget build(BuildContext context) {
    return EOPage(
      title: 'Anliegen auswählen',
      child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              hintText: 'Anliegen suchen',
              prefixIcon: Icon(Icons.search_rounded),
            ),
            onChanged: _filterOptions,
          ),
          ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) => Divider(
              color: Constants.blackey.withOpacity(0.3),
            ),
            itemBuilder: _buildListElement,
            itemCount: _filteredOptions.length,
          ),
        ],
      ),
    );
  }
}
