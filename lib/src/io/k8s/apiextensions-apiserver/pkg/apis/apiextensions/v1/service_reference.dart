// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.apiextensions__apiserver.pkg.apis.apiextensions.v1;

/// ServiceReference holds a reference to Service.legacy.k8s.io.
class ServiceReference {
  /// Default constructor.
  const ServiceReference({
    required this.name,
    required this.namespace,
    this.path,
    this.port,
  });

  /// Creates a [ServiceReference] from JSON data.
  factory ServiceReference.fromJson(Map<String, dynamic> json) {
    final tempNameJson = json['name'];
    final tempNamespaceJson = json['namespace'];
    final tempPathJson = json['path'];
    final tempPortJson = json['port'];

    final String tempName = tempNameJson;
    final String tempNamespace = tempNamespaceJson;
    final String? tempPath = tempPathJson;
    final int? tempPort = tempPortJson;

    return ServiceReference(
      name: tempName,
      namespace: tempNamespace,
      path: tempPath,
      port: tempPort,
    );
  }

  /// name is the name of the service. Required.
  final String name;

  /// namespace is the namespace of the service. Required.
  final String namespace;

  /// path is an optional URL path at which the webhook will be contacted.
  final String? path;

  /// port is an optional service port at which the webhook will be contacted. `port` should be a valid port number (1-65535, inclusive). Defaults to 443 for backward compatibility.
  final int? port;

  /// Converts a [ServiceReference] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempName = name;
    final tempNamespace = namespace;
    final tempPath = path;
    final tempPort = port;

    jsonData['name'] = tempName;

    jsonData['namespace'] = tempNamespace;

    if (tempPath != null) {
      jsonData['path'] = tempPath;
    }

    if (tempPort != null) {
      jsonData['port'] = tempPort;
    }

    return jsonData;
  }
}
