import 'package:kubernetes/src/generated/kubernetes/api/core/v1/typed_local_object_reference.dart';
import 'package:kubernetes/src/generated/kubernetes/api/networking/v1/ingress_service_backend.dart';

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

  /// Converts a IngressBackend instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (resource != null) {
      jsonData['resource'] = resource!.toJson();
    }
    if (service != null) {
      jsonData['service'] = service!.toJson();
    }

    return jsonData;
  }

  /// Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, a service.Name and service.Port must not be specified. This is a mutually exclusive setting with "Service".
  final TypedLocalObjectReference? resource;

  /// Service references a service as a backend. This is a mutually exclusive setting with "Resource".
  final IngressServiceBackend? service;
}
