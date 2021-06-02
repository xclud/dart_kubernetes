import 'dart:convert';
import 'generated.dart';
import 'package:http/http.dart' as http;

class KubernetesClient {
  KubernetesClient(String baseUrl)
      : _baseUrl = (baseUrl + (baseUrl.endsWith("/") ? "" : "/")),
        _httpClient = http.Client();

  final String _baseUrl;
  final http.Client _httpClient;

  Future<PodList> listNamespacedPodWithHttpMessages(String namespace) async {
    final url = _getFullUrl('api/v1/namespaces/${namespace}/pods');
    final resp = await _httpClient.get(Uri.parse(url));
    final map = json.decode(resp.body) as Map<String, dynamic>;

    return PodList.fromJson(map);
  }

  String _getFullUrl(String url) {
    return "${_baseUrl}${url}";
  }
}
