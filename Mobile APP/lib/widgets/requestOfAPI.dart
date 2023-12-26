// ignore_for_file: file_names, camel_case_types

import 'package:dio/dio.dart';

class request {
  final Dio dio;
  request(this.dio);
  Future<String> getAns({required String image}) async {
    try {
      Response response = await dio
          .get("https://dlmodel-001-site1.btempurl.com/api/Model/image=$image");
      String answer = response.data;
      return answer;
    } on Exception {
      return "problem";
    }
  }
}
