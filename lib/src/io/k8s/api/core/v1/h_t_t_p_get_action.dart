// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// HTTPGetAction describes an action based on HTTP Get requests.
class HTTPGetAction {
  /// Default constructor.
  const HTTPGetAction({
    this.host,
    this.httpHeaders,
    this.path,
    required this.port,
    this.scheme,
  });

  /// Creates a [HTTPGetAction] from JSON data.
  factory HTTPGetAction.fromJson(Map<String, dynamic> json) {
    final tempHostJson = json['host'];
    final tempHttpHeadersJson = json['httpHeaders'];
    final tempPathJson = json['path'];
    final tempPortJson = json['port'];
    final tempSchemeJson = json['scheme'];

    final String? tempHost = tempHostJson;

    final List<HTTPHeader>? tempHttpHeaders = tempHttpHeadersJson != null
        ? List<dynamic>.from(tempHttpHeadersJson)
            .map(
              (e) => HTTPHeader.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final String? tempPath = tempPathJson;
    final IntOrString tempPort = IntOrString(tempPortJson);
    final String? tempScheme = tempSchemeJson;

    return HTTPGetAction(
      host: tempHost,
      httpHeaders: tempHttpHeaders,
      path: tempPath,
      port: tempPort,
      scheme: tempScheme,
    );
  }

  /// Host name to connect to, defaults to the pod IP. You probably want to set "Host" in httpHeaders instead.
  final String? host;

  /// Custom headers to set in the request. HTTP allows repeated headers.
  final List<HTTPHeader>? httpHeaders;

  /// Path to access on the HTTP server.
  final String? path;

  /// Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
  final IntOrString port;

  /// Scheme to use for connecting to the host. Defaults to HTTP.
  final String? scheme;

  /// Converts a [HTTPGetAction] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempHost = host;
    final tempHttpHeaders = httpHeaders;
    final tempPath = path;
    final tempPort = port;
    final tempScheme = scheme;

    if (tempHost != null) {
      jsonData['host'] = tempHost;
    }

    if (tempHttpHeaders != null) {
      jsonData['httpHeaders'] =
          tempHttpHeaders.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempPath != null) {
      jsonData['path'] = tempPath;
    }

    jsonData['port'] = tempPort;

    if (tempScheme != null) {
      jsonData['scheme'] = tempScheme;
    }

    return jsonData;
  }
}
