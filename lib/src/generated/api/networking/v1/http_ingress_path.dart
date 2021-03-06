import 'package:kubernetes/src/generated/api/networking/v1/ingress_backend.dart';

/// HTTPIngressPath associates a path with a backend. Incoming urls matching the path are forwarded to the backend.
class HTTPIngressPath {
  /// The main constructor.
  const HTTPIngressPath({
    required this.backend,
    this.path,
    required this.pathType,
  });

  /// Creates a HTTPIngressPath from JSON data.
  HTTPIngressPath.fromJson(Map<String, dynamic> json)
      : this(
          backend: IngressBackend.fromJson(json['backend']),
          path: json['path'],
          pathType: json['pathType'],
        );

  /// Creates a list of HTTPIngressPath from JSON data.
  static List<HTTPIngressPath> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => HTTPIngressPath.fromJson(e)).toList();
  }

  /// Converts a HTTPIngressPath instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['backend'] = backend.toJson();
    if (path != null) {
      jsonData['path'] = path!;
    }
    jsonData['pathType'] = pathType;

    return jsonData;
  }

  /// Backend defines the referenced service endpoint to which the traffic will be forwarded to.
  final IngressBackend backend;

  /// Path is matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional "path" part of a URL as defined by RFC 3986. Paths must begin with a '/' and must be present when using PathType with value "Exact" or "Prefix".
  final String? path;

  /// PathType determines the interpretation of the Path matching. PathType can be one of the following values: * Exact: Matches the URL path exactly. * Prefix: Matches based on a URL path prefix split by '/'. Matching is
  ///   done on a path element by element basis. A path element refers is the
  ///   list of labels in the path split by the '/' separator. A request is a
  ///   match for path p if every p is an element-wise prefix of p of the
  ///   request path. Note that if the last element of the path is a substring
  ///   of the last element in request path, it is not a match (e.g. /foo/bar
  ///   matches /foo/bar/baz, but does not match /foo/barbaz).
  /// * ImplementationSpecific: Interpretation of the Path matching is up to
  ///   the IngressClass. Implementations can treat this as a separate PathType
  ///   or treat it identically to Prefix or Exact path types.
  /// Implementations are required to support all path types.
  final String pathType;
}
