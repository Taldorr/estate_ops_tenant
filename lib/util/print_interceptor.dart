import 'dart:async';

import 'package:chopper/chopper.dart';

class PrintRequestInterceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) {
    print('${request.method} - ${request.url}');
    return request;
  }
}

class PrintResponseInterceptor implements ResponseInterceptor {
  @override
  FutureOr<Response> onResponse(Response response) {
    print("RESPONSE: ${response.statusCode}");
    if (!response.isSuccessful) {
      print(response.error);
      print(response.bodyString);
    }

    return response;
  }
}
