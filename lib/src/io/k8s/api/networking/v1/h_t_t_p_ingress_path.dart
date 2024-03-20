// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../networking_v1.dart';

/// HTTPIngressPath associates a path with a backend. Incoming urls matching the path are forwarded to the backend.
class HTTPIngressPath {
  /// Default constructor.
  const HTTPIngressPath({
    required this.backend,
    this.path,
    required this.pathType,
  });

  /// Creates a [HTTPIngressPath] from JSON data.
  factory HTTPIngressPath.fromJson(Map<String, dynamic> json) {
    final tempBackendJson = json['backend'];
    final tempPathJson = json['path'];
    final tempPathTypeJson = json['pathType'];

    final IngressBackend tempBackend = IngressBackend.fromJson(tempBackendJson);
    final String? tempPath = tempPathJson;
    final String tempPathType = tempPathTypeJson;

    return HTTPIngressPath(
      backend: tempBackend,
      path: tempPath,
      pathType: tempPathType,
    );
  }

  /// backend defines the referenced service endpoint to which the traffic will be forwarded to.
  final IngressBackend backend;

  /// path is matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional "path" part of a URL as defined by RFC 3986. Paths must begin with a '/' and must be present when using PathType with value "Exact" or "Prefix".
  final String? path;

  /// pathType determines the interpretation of the path matching. PathType can be one of the following values: * Exact: Matches the URL path exactly. * Prefix: Matches based on a URL path prefix split by '/'. Matching is
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

  /// Converts a [HTTPIngressPath] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempBackend = backend;
    final tempPath = path;
    final tempPathType = pathType;

    jsonData['backend'] = tempBackend.toJson();

    if (tempPath != null) {
      jsonData['path'] = tempPath;
    }

    jsonData['pathType'] = tempPathType;

    return jsonData;
  }
}
