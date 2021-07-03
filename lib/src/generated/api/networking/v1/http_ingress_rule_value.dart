import 'package:kubernetes/src/generated/api/networking/v1/http_ingress_path.dart';

/// HTTPIngressRuleValue is a list of http selectors pointing to backends. In the example: http://<host>/<path>?<searchpart> -> backend where where parts of the url correspond to RFC 3986, this resource will be used to match against everything after the last '/' and before the first '?' or '#'.
class HTTPIngressRuleValue {
  /// The main constructor.
  const HTTPIngressRuleValue({
    required this.paths,
  });

  /// Creates a HTTPIngressRuleValue from JSON data.
  HTTPIngressRuleValue.fromJson(Map<String, dynamic> json)
      : this(
          paths: json['paths'] != null
              ? HTTPIngressPath.listFromJson(
                  (json['paths'] as Iterable).cast<Map<String, dynamic>>())
              : [],
        );

  /// Creates a list of HTTPIngressRuleValue from JSON data.
  static List<HTTPIngressRuleValue> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => HTTPIngressRuleValue.fromJson(e)).toList();
  }

  /// A collection of paths that map requests to backends.
  final List<HTTPIngressPath> paths;
}
