import 'dart:convert';
import 'package:http/http.dart' as http;

var url = Uri.parse('https://api.fusionmyanmar.com/rest/admin/demo');

void httpGet() async {
  String username = 'fusion_dev';
  String password = 'fusion_dev';
  String basicAuth =
      'Basic ${base64.encode(utf8.encode('$username:$password'))}';
  print(basicAuth);

  var response = await http.get(url, headers: <String, String>{
    'Authorization': basicAuth,
    'SECRET_ACCESS_TOKEN':
        "\$2a\$10\$wl2BjK4NHQwB6npW2xOWCOyFN/x3s92TKnLdSDFSVnTCuxIDg8mVG"
  });
  print(response.body);
}

void main() async {
  httpGet();

  // for FusionAPI Testing
}
