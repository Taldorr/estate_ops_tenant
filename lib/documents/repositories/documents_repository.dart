import 'dart:convert';
import 'dart:typed_data';

import 'package:chopper/chopper.dart';
import 'package:cross_file/cross_file.dart';
import 'package:estate_ops_tenant/util/demo_helper.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

import '../../api/outputs/swagger.swagger.dart';
import '../../util/api_service.dart';
import '../models/document.model.dart';

class DocumentsRepository {
  Future<List<DocumentModel>> loadDocuments() async {
    try {
      final response = await ApiService.getInstance().apiClient.attachmentGet();
      return response.body?.map((dto) => DocumentModel.fromDto(dto)).toList() ??
          [];
    } catch (e) {
      print("error: $e");
      return [];
    }
  }

  Future<Uint8List?> downloadDocument(String id) async {
    try {
      final response =
          await ApiService.getInstance().apiClient.attachmentIdGet(id: id);
      return response.bodyBytes;
    } catch (e) {
      print("error: $e");
    }
    return null;
  }

  Future<void> uploadAttachments(
      List<String> inquiryMessageIds, List<XFile> xFiles,
      {bool isDemo = false}) async {
    try {
      final multipartFutures = xFiles
          .map((f) => http.MultipartFile.fromPath(
                'files',
                f.path,
                contentType:
                    MediaType.parse(f.mimeType ?? 'application/octet-stream'),
              ))
          .toList();

      final files = await Future.wait(multipartFutures);

      await ApiService.getInstance().apiClient.client.post(
        Uri.parse((isDemo
                ? DemoHelper.demoApiUrl
                : FlavorConfig.instance.variables["api-base-url"]) +
            '/attachment'),
        multipart: true,
        parts: [
          PartValue(
              'dto',
              jsonEncode(
                  CreateAttachmentDto(inquiryMessageIds: inquiryMessageIds))),
          PartValueFile('files', files),
        ],
      );
    } catch (e) {
      print("error: $e");
    }
  }
}
