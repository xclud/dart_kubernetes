// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../../../io_k8s_kube__aggregator_pkg_apis_apiregistration_v1.dart';

/// ServiceReference holds a reference to Service.legacy.k8s.io.
class ServiceReference {
  /// Default constructor.
  const ServiceReference({
    this.name,
    this.namespace,
    this.port,
  });

  /// Creates a [ServiceReference] from JSON data.
  factory ServiceReference.fromJson(Map<String, dynamic> json) {
    final tempNameJson = json['name'];
    final tempNamespaceJson = json['namespace'];
    final tempPortJson = json['port'];

    final String? tempName = tempNameJson;
    final String? tempNamespace = tempNamespaceJson;
    final int? tempPort = tempPortJson;

    return ServiceReference(
      name: tempName,
      namespace: tempNamespace,
      port: tempPort,
    );
  }

  /// Name is the name of the service.
  final String? name;

  /// Namespace is the namespace of the service.
  final String? namespace;

  /// If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
  final int? port;

  /// Converts a [ServiceReference] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempName = name;
    final tempNamespace = namespace;
    final tempPort = port;

    if (tempName != null) {
      jsonData['name'] = tempName;
    }

    if (tempNamespace != null) {
      jsonData['namespace'] = tempNamespace;
    }

    if (tempPort != null) {
      jsonData['port'] = tempPort;
    }

    return jsonData;
  }
}
