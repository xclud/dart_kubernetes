// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.flowcontrol.v1beta2;

/// ServiceAccountSubject holds detailed information for service-account-kind subject.
class ServiceAccountSubject {
  /// Default constructor.
  const ServiceAccountSubject({
    required this.name,
    required this.namespace,
  });

  /// Creates a [ServiceAccountSubject] from JSON data.
  factory ServiceAccountSubject.fromJson(Map<String, dynamic> json) {
    final tempNameJson = json['name'];
    final tempNamespaceJson = json['namespace'];

    final tempName = tempNameJson;
    final tempNamespace = tempNamespaceJson;

    return ServiceAccountSubject(
      name: tempName,
      namespace: tempNamespace,
    );
  }

  /// `name` is the name of matching ServiceAccount objects, or "*" to match regardless of name. Required.
  final String name;

  /// `namespace` is the namespace of matching ServiceAccount objects. Required.
  final String namespace;

  /// Converts a [ServiceAccountSubject] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempName = name;
    final tempNamespace = namespace;

    jsonData['name'] = tempName;

    jsonData['namespace'] = tempNamespace;

    return jsonData;
  }
}
