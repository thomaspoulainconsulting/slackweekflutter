import 'package:http_interceptor/interceptor_contract.dart';
import 'package:http_interceptor/models/request_data.dart';
import 'package:http_interceptor/models/response_data.dart';

class LogginInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({RequestData data}) async {
    print(data.headers);
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({ResponseData data}) async {
      print(data.headers);
      print(data.body);
      return data;
  }

}