import 'dart:async';
import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../repositories/notifications_repository.dart';

part 'notifications_event.dart';
part 'notifications_state.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  final NotificationsRepository _notificationsRepository;

  NotificationsBloc(this._notificationsRepository)
      : super(const NotificationsInitial()) {
    on<UpdateFCMTokenEvent>(_onUpdateFCMToken);
    on<InitNotificationsEvent>(_onInitNotifications);
  }

  Future<void> _onInitNotifications(
      InitNotificationsEvent event, Emitter<NotificationsState> emit) async {
    try {
      final settings = await _requestPermissions();
      print(settings.authorizationStatus.toString());
    } catch (e) {
      print("Notifications Error: " + e.toString());
    }

    if (Platform.isIOS) {
// For apple platforms, ensure the APNS token is available before making any FCM plugin API calls
      final apnsToken = await FirebaseMessaging.instance.getAPNSToken();
      if (apnsToken == null) return;
    }

    final token = await FirebaseMessaging.instance.getToken();

    if (token != null) {
      add(UpdateFCMTokenEvent(token: token));
    }

    _addTokenRefreshListener();
    FirebaseMessaging.onMessage.listen(_firebaseMessagingForegroundHandler);
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }

  Future<void> _onUpdateFCMToken(
      UpdateFCMTokenEvent event, Emitter<NotificationsState> emit) async {
    try {
      await _notificationsRepository.updateFCMToken(event.token);
    } catch (e) {
      print("error: $e");
    }
  }

  Future<NotificationSettings> _requestPermissions() async {
    return FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: true,
      sound: true,
    );
  }

  void _addTokenRefreshListener() {
    FirebaseMessaging.instance.onTokenRefresh.listen((fcmToken) {
      add(UpdateFCMTokenEvent(token: fcmToken));
    }).onError((err) {
      print("error: $err");
    });
  }

  @pragma('vm:entry-point')
  Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    // TODO: Handle background message
    print("Handling a background message: ${message.messageId}");
  }

  Future<void> _firebaseMessagingForegroundHandler(
      RemoteMessage message) async {
    // TODO: Handle foreground message
    print("Handling a foreground message: ${message.messageId}");
  }
}
