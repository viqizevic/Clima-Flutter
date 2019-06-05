import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);

    if (200 == response.statusCode) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print("Unable to get response");
      print(response.statusCode);
    }
  }
}
