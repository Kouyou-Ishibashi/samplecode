// API通信やデータベース管理などを担当します。
// APIなど実際に通信を行うクラスです。
// Repositoryクラスのコンストラクタに渡して使用しています。

// サンプルコード
// api_service.dart

import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl;

  ApiService({required this.baseUrl});

  Future<Map<String, dynamic>> fetchData() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
