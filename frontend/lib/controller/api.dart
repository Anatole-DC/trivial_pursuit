import 'dart:ffi';

import 'package:http/http.dart' as http;

const String ip = "192.168.43.34";
const int port = 3000;

Future<http.Response> testAPI() {
  return http.get(Uri.parse("http://$ip:$port"));
}
