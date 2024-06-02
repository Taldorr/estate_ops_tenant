import 'package:estate_ops_tenant/inquiry/models/inquiry.type.enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../util/date_helper.dart';
import '../bloc/inquiry_bloc.dart';
import 'inquiry_details.page.dart';

class MyInquirysPage extends StatefulWidget {
  static const route = '/my-inquirys';

  const MyInquirysPage({super.key});

  @override
  State<MyInquirysPage> createState() => _MyInquirysPageState();
}

class _MyInquirysPageState extends State<MyInquirysPage> {
  @override
  void initState() {
    context.read<InquiryBloc>().add(const LoadInquirysEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.myRequests),
      ),
      body: BlocBuilder<InquiryBloc, InquiryState>(builder: (context, state) {
        return state.isLoading
            ? const Center(child: CircularProgressIndicator())
            : ListView.separated(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                separatorBuilder: (context, index) => const Divider(
                  color: Colors.black26,
                ),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      '${state.inquirys[index].type.toLocalString(context)} - ${DateHelper.format(state.inquirys[index].createdAt)}',
                      textAlign: TextAlign.center,
                    ),
                    onTap: () => Navigator.pushNamed(
                      context,
                      InquiryDetailsPage.route,
                      arguments: state.inquirys[index].id,
                    ),
                  );
                },
                itemCount: state.inquirys.length,
              );
      }),
    );
  }
}
