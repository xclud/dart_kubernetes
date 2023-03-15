// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.admissionregistration.v1;

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

    final tempName = tempNameJson;
    final tempNamespace = tempNamespaceJson;
    final tempPath = tempPathJson;
    final tempPort = tempPortJson;

    return ServiceReference(
      name: tempName,
      namespace: tempNamespace,
      path: tempPath,
      port: tempPort,
    );
  }

  /// `name` is the name of the service. Required.
  final String name;

  /// `namespace` is the namespace of the service. Required.
  final String namespace;

  /// `path` is an optional URL path which will be sent in any request to this service.
  final String? path;

  /// If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
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
