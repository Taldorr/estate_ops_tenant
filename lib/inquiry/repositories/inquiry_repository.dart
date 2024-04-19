import '../../api/outputs/swagger.swagger.dart';
import '../../util/api_service.dart';

class InquiryRepository {
  Future<InquiryDto?> createInquiry(CreateInquiryDto dto) async {
    try {
      final response = await ApiService.getInstance().apiClient.inquiryPost(body: dto);
      if (response.isSuccessful) {
        return response.body;
      }
    } catch (e) {
      print("error: $e");
    }
    return null;
  }

  Future<InquiryMessageDto?> addMessage(CreateInquiryMessageDto dto) async {
    try {
      final response = await ApiService.getInstance().apiClient.inquiryMessagePost(body: dto);
      if (response.isSuccessful) {
        return response.body;
      }
    } catch (e) {
      print("error: $e");
    }
    return null;
  }

  Future<List<InquiryDto>> loadAll() async {
    try {
      final response = await ApiService.getInstance().apiClient.inquiryGet();
      return response.body ?? [];
    } catch (e) {
      print("error: $e");
      return [];
    }
  }
}
