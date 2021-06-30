import 'dart:convert';
import 'package:kubernetes/kubernetes.dart';

import 'generated.dart';
import 'package:http/http.dart' as http;

import 'generated/patch.dart';
import 'generated/patch_type.dart';

class KubernetesClient {
  KubernetesClient(String server, this.jwt)
      : _baseUrl = (server + (server.endsWith("/") ? "" : "/")),
        _httpClient = http.Client();

  final String jwt;
  final String _baseUrl;
  final http.Client _httpClient;

  Future<Map<String, dynamic>> _getJson(String url) async {
    final fullurl = _getFullUrl(url);
    final headers = <String, String>{'Authorization': 'Bearer $jwt'};

    final resp = await _httpClient.get(Uri.parse(fullurl), headers: headers);
    final map = json.decode(resp.body) as Map<String, dynamic>;
    return map;
  }

  Future<PodList> listNamespacedPodWithHttpMessages(String namespace) async {
    final map = await _getJson('api/v1/namespaces/${namespace}/pods');

    return PodList.fromJson(map);
  }

  String _getFullUrl(String url) {
    return "${_baseUrl}${url}";
  }
}

String getHeader(Object body) {
  if (body is Patch) {
    return getPatchHeader(body);
  }

  return "application/json; charset=utf-8";
}

String getPatchHeader(Patch body) {
  switch (body.type) {
    case PatchType.jsonPatch:
      return "application/json-patch+json; charset=utf-8";
    case PatchType.mergePatch:
      return "application/merge-patch+json; charset=utf-8";
    case PatchType.strategicMergePatch:
      return "application/strategic-merge-patch+json; charset=utf-8";
    case PatchType.applyPatch:
      return "application/apply-patch+yaml; charset=utf-8";
    default:
      throw new Exception(body.type);
  }
}
