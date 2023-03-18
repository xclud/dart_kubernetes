// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.networking.v1;

/// HTTPIngressRuleValue is a list of http selectors pointing to backends. In the example: http://<host>/<path>?<searchpart> -> backend where where parts of the url correspond to RFC 3986, this resource will be used to match against everything after the last '/' and before the first '?' or '#'.
class HTTPIngressRuleValue {
  /// Default constructor.
  const HTTPIngressRuleValue({
    required this.paths,
  });

  /// Creates a [HTTPIngressRuleValue] from JSON data.
  factory HTTPIngressRuleValue.fromJson(Map<String, dynamic> json) {
    final tempPathsJson = json['paths'];

    final List<HTTPIngressPath> tempPaths = List<dynamic>.from(tempPathsJson)
        .map((e) => HTTPIngressPath.fromJson(Map<String, dynamic>.from(e)))
        .toList();

    return HTTPIngressRuleValue(
      paths: tempPaths,
    );
  }

  /// paths is a collection of paths that map requests to backends.
  final List<HTTPIngressPath> paths;

  /// Converts a [HTTPIngressRuleValue] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempPaths = paths;

    jsonData['paths'] = tempPaths;

    return jsonData;
  }
}
