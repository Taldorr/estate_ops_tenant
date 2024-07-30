import 'package:estate_ops_tenant/auth/auth.dart';
import 'package:estate_ops_tenant/util/constants.dart';
import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
      return Stack(
        children: [
          Image.asset(
            'assets/images/placeholder_flat.png',
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              color: Constants.whitey.withOpacity(0.9),
              child: Text(
                  '${state.profile?.street}, ${state.profile?.zip} ${state.profile?.city}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  )),
            ),
          ),
        ],
      );
    });
  }
}
