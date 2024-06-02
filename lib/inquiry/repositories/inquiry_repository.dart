import 'package:estate_ops_tenant/inquiry/models/inquiry.model.dart';
import 'package:estate_ops_tenant/inquiry/models/inquiry_message.model.dart';

import '../../api/outputs/swagger.swagger.dart';
import '../../util/api_service.dart';

class InquiryRepository {
  Future<InquiryModel?> createInquiry(CreateInquiryDto dto) async {
    try {
      final response =
          await ApiService.getInstance().apiClient.inquiryPost(body: dto);
      if (response.isSuccessful) {
        return InquiryModel.fromDto(response.body!);
      }
    } catch (e) {
      print("error: $e");
    }
    return null;
  }

  Future<InquiryMessageModel?> addMessage(CreateInquiryMessageDto dto) async {
    try {
      final response = await ApiService.getInstance()
          .apiClient
          .inquiryMessagePost(body: dto);
      if (response.isSuccessful) {
        return InquiryMessageModel.fromDto(response.body!);
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

  Future<InquiryModel?> getOne(String id) async {
    try {
      final response =
          await ApiService.getInstance().apiClient.inquiryIdGet(id: id);
      return response.body != null
          ? InquiryModel.fromDto(response.body!)
          : null;
    } catch (e) {
      print("error: $e");
      return null;
    }
  }

  Future<void> requestDocument(DocumentRequestDto dto) async {
    try {
      await ApiService.getInstance().apiClient.inquiryDocumentPost(body: dto);
      return;
    } catch (e) {
      print("error: $e");
      return;
    }
  }
}
