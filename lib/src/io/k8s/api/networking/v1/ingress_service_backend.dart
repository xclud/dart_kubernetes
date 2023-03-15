// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.networking.v1;

/// IngressServiceBackend references a Kubernetes Service as a Backend.
class IngressServiceBackend {
  /// Default constructor.
  const IngressServiceBackend({
    required this.name,
    this.port,
  });

  /// Creates a [IngressServiceBackend] from JSON data.
  factory IngressServiceBackend.fromJson(Map<String, dynamic> json) {
    final tempNameJson = json['name'];
    final tempPortJson = json['port'];

    final tempName = tempNameJson;
    final tempPort =
        tempPortJson != null ? ServiceBackendPort.fromJson(tempPortJson) : null;

    return IngressServiceBackend(
      name: tempName,
      port: tempPort,
    );
  }

  /// name is the referenced service. The service must exist in the same namespace as the Ingress object.
  final String name;

  /// port of the referenced service. A port name or port number is required for a IngressServiceBackend.
  final ServiceBackendPort? port;

  /// Converts a [IngressServiceBackend] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempName = name;
    final tempPort = port;

    jsonData['name'] = tempName;

    if (tempPort != null) {
      jsonData['port'] = tempPort.toJson();
    }

    return jsonData;
  }
}
