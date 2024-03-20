// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../networking_v1.dart';

/// IngressBackend describes all endpoints for a given service and port.
class IngressBackend {
  /// Default constructor.
  const IngressBackend({
    this.resource,
    this.service,
  });

  /// Creates a [IngressBackend] from JSON data.
  factory IngressBackend.fromJson(Map<String, dynamic> json) {
    final tempResourceJson = json['resource'];
    final tempServiceJson = json['service'];

    final TypedLocalObjectReference? tempResource = tempResourceJson != null
        ? TypedLocalObjectReference.fromJson(tempResourceJson)
        : null;
    final IngressServiceBackend? tempService = tempServiceJson != null
        ? IngressServiceBackend.fromJson(tempServiceJson)
        : null;

    return IngressBackend(
      resource: tempResource,
      service: tempService,
    );
  }

  /// resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, a service.Name and service.Port must not be specified. This is a mutually exclusive setting with "Service".
  final TypedLocalObjectReference? resource;

  /// service references a service as a backend. This is a mutually exclusive setting with "Resource".
  final IngressServiceBackend? service;

  /// Converts a [IngressBackend] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempResource = resource;
    final tempService = service;

    if (tempResource != null) {
      jsonData['resource'] = tempResource.toJson();
    }

    if (tempService != null) {
      jsonData['service'] = tempService.toJson();
    }

    return jsonData;
  }
}
