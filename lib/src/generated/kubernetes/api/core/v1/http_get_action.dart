import 'package:kubernetes/src/generated/kubernetes/api/core/v1/http_header.dart';

/// HTTPGetAction describes an action based on HTTP Get requests.
class HTTPGetAction {
  /// The main constructor.
  const HTTPGetAction({
    this.host,
    this.httpHeaders,
    this.path,
    required this.port,
    this.scheme,
  });

  /// Creates a HTTPGetAction from JSON data.
  HTTPGetAction.fromJson(Map<String, dynamic> json)
      : this(
          host: json['host'],
          httpHeaders: json['httpHeaders'] != null
              ? HTTPHeader.listFromJson((json['httpHeaders'] as Iterable)
                  .cast<Map<String, dynamic>>())
              : null,
          path: json['path'],
          port: json['port'],
          scheme: json['scheme'],
        );

  /// Creates a list of HTTPGetAction from JSON data.
  static List<HTTPGetAction> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => HTTPGetAction.fromJson(e)).toList();
  }

  /// Converts a HTTPGetAction instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (host != null) {
      jsonData['host'] = host!;
    }
    if (httpHeaders != null) {
      jsonData['httpHeaders'] =
          httpHeaders!.map((item) => item.toJson()).toList();
    }
    if (path != null) {
      jsonData['path'] = path!;
    }
    jsonData['port'] = port;
    if (scheme != null) {
      jsonData['scheme'] = scheme!;
    }

    return jsonData;
  }

  /// Host name to connect to, defaults to the pod IP. You probably want to set "Host" in httpHeaders instead.
  final String? host;

  /// Custom headers to set in the request. HTTP allows repeated headers.
  final List<HTTPHeader>? httpHeaders;

  /// Path to access on the HTTP server.
  final String? path;

  /// Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
  final Object port;

  /// Scheme to use for connecting to the host. Defaults to HTTP.
  final String? scheme;
}
