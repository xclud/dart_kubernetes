import 'package:kubernetes/src/generated/api/core/v1/typed_local_object_reference.dart';
import 'package:kubernetes/src/generated/api/networking/v1/ingress_service_backend.dart';

/// IngressBackend describes all endpoints for a given service and port.
class IngressBackend {
  /// The main constructor.
  const IngressBackend({
    this.resource,
    this.service,
  });

  /// Creates a IngressBackend from JSON data.
  IngressBackend.fromJson(Map<String, dynamic> json)
      : this(
          resource: json['resource'] != null
              ? TypedLocalObjectReference.fromJson(json['resource'])
              : null,
          service: json['service'] != null
              ? IngressServiceBackend.fromJson(json['service'])
              : null,
        );

  /// Creates a list of IngressBackend from JSON data.
  static List<IngressBackend> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => IngressBackend.fromJson(e)).toList();
  }

  /// Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, a service.Name and service.Port must not be specified. This is a mutually exclusive setting with "Service".
  final TypedLocalObjectReference? resource;

  /// Service references a Service as a Backend. This is a mutually exclusive setting with "Resource".
  final IngressServiceBackend? service;
}
