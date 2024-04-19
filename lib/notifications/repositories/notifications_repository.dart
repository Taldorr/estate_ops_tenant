import '../../api/outputs/swagger.swagger.dart';
import '../../util/api_service.dart';

class NotificationsRepository {
  Future<void> updateFCMToken(String token) async {
    try {
      await ApiService.getInstance()
          .apiClient
          .messagesFcmTokenPut(body: UpdateFCMTokenDto(fcmToken: token));
      return;
    } catch (e) {
      print(e);
      print("FCM error: $e");
      return;
    }
  }
}
