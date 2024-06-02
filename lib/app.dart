import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:estate_ops_tenant/auth/pages/activation_page.dart';
import 'package:estate_ops_tenant/auth/pages/edit_profile_page.dart';
import 'package:estate_ops_tenant/auth/pages/language_page.dart';
import 'package:estate_ops_tenant/auth/pages/profile_page.dart';
import 'package:estate_ops_tenant/auth/pages/settings_page.dart';
import 'package:estate_ops_tenant/auth/pages/signup_page.dart';
import 'package:estate_ops_tenant/documents/pages/request_document_page.dart';
import 'package:estate_ops_tenant/documents/repositories/documents_repository.dart';
import 'package:estate_ops_tenant/inquiry/pages/chat.page.dart';
import 'package:estate_ops_tenant/inquiry/pages/select_inquirytype.page.dart';
import 'package:estate_ops_tenant/mailbox/pages/mailbox.page.dart';
import 'package:estate_ops_tenant/notifications/bloc/notifications_bloc.dart';
import 'package:estate_ops_tenant/notifications/repositories/notifications_repository.dart';
import 'package:estate_ops_tenant/onboarding/pages/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get_it/get_it.dart';

import 'auth/bloc/auth_bloc.dart';
import 'auth/pages/login_page.dart';
import 'auth/repositories/auth_repository.dart';
import 'dashboard/pages/dashboard_page.dart';
import 'documents/bloc/documents_bloc.dart';
import 'documents/pages/documents_page.dart';
import 'inquiry/bloc/inquiry_bloc.dart';
import 'inquiry/pages/inquiry_details.page.dart';
import 'inquiry/pages/my_inquirys.page.dart';
import 'inquiry/pages/new_inquiry.page.dart';
import 'inquiry/repositories/inquiry_repository.dart';
import 'mailbox/bloc/mailbox_bloc.dart';
import 'mailbox/pages/message_details.page.dart';
import 'mailbox/repositories/mailbox_repository.dart';
import 'util/constants.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class TenantApp extends StatelessWidget {
  const TenantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (_) => NotificationsRepository(),
        ),
        RepositoryProvider(
          create: (_) => AuthRepository(auth0Client: GetIt.instance<Auth0>()),
        ),
        RepositoryProvider(
          create: (_) => MailboxRepository(),
        ),
        RepositoryProvider(
          create: (_) => DocumentsRepository(),
        ),
        RepositoryProvider(
          create: (_) => InquiryRepository(),
        )
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (ctx) => DocumentsBloc(ctx.read<DocumentsRepository>()),
          ),
          BlocProvider(
            create: (ctx) => MailboxBloc(ctx.read<MailboxRepository>()),
          ),
          BlocProvider(
            create: (ctx) => InquiryBloc(ctx.read<InquiryRepository>()),
          ),
          BlocProvider(
            create: (ctx) => AuthBloc(ctx.read<AuthRepository>())
              ..add(const InitAuthEvent()),
            lazy: false,
          ),
          BlocProvider(
              create: (ctx) =>
                  NotificationsBloc(ctx.read<NotificationsRepository>())),
        ],
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (ctx, state) {
            return MaterialApp(
              theme: ThemeData(
                useMaterial3: true,
                fontFamily: 'Quicksand',
                primaryColor: Constants.primary,
                inputDecorationTheme: InputDecorationTheme(
                  contentPadding: const EdgeInsets.all(12),
                  hintStyle:
                      TextStyle(color: Constants.blackey.withOpacity(0.3)),
                  prefixIconColor: Constants.blackey.withOpacity(0.3),
                  iconColor: Constants.blackey.withOpacity(0.3),
                  focusColor: Constants.primary.withOpacity(0.8),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Constants.blackey.withOpacity(0.3),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Constants.primary.withOpacity(0.8),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Constants.primary,
                    foregroundColor: Constants.whitey,
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 10),
                  ),
                ),
                outlinedButtonTheme: OutlinedButtonThemeData(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Constants.blackey,
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    side: const BorderSide(
                      width: 1,
                      color: Constants.primary,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 10),
                  ),
                ),
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(
                    foregroundColor: Constants.blackey,
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    backgroundColor: const Color(0x7FFDFDFF),
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0x4C1C1C1C)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  ),
                ),
                cardTheme: CardTheme(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: Constants.primary.withOpacity(0.5),
                        width: 0.7,
                      )),
                ),
                textTheme: const TextTheme(
                  // H1
                  titleLarge: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                  ),
                  // H2
                  titleMedium: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  // Body
                  bodyMedium: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  // Navigation
                  labelMedium: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  // Label
                  labelSmall: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                  labelLarge: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              home: const LoginPage(),
              navigatorKey: navigatorKey,
              routes: {
                OnboardingPage.route: (_) => const OnboardingPage(),
                LoginPage.route: (_) => const LoginPage(),
                ActivationPage.route: (_) => const ActivationPage(),
                SignupPage.route: (_) => const SignupPage(),
                DashboardPage.route: (_) => const DashboardPage(),
                DocumentsPage.route: (_) => const DocumentsPage(),
                MyInquirysPage.route: (_) => const MyInquirysPage(),
                MailboxPage.route: (_) => const MailboxPage(),
                MessageDetailsPage.route: (_) => const MessageDetailsPage(),
                ProfilePage.route: (_) => const ProfilePage(),
                EditProfilePage.route: (_) => const EditProfilePage(),
                SettingsPage.route: (_) => const SettingsPage(),
                SelectInquiryTypePage.route: (_) =>
                    const SelectInquiryTypePage(),
                NewInquiryPage.route: (_) => const NewInquiryPage(),
                RequestDocumentPage.route: (_) => const RequestDocumentPage(),
                LanguagePage.route: (_) => const LanguagePage(),
                InquiryDetailsPage.route: (_) => const InquiryDetailsPage(),
                ChatPage.route: (_) => const ChatPage(),
              },
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              locale: state.locale,
            );
          },
        ),
      ),
    );
  }
}
