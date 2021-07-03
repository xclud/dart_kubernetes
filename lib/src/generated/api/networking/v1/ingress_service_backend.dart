import 'package:kubernetes/src/generated/api/networking/v1/service_backend_port.dart';

/// IngressServiceBackend references a Kubernetes Service as a Backend.
class IngressServiceBackend {
  /// The main constructor.
  const IngressServiceBackend({
    required this.name,
    this.port,
  });

  /// Creates a IngressServiceBackend from JSON data.
  IngressServiceBackend.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          port: json['port'] != null
              ? ServiceBackendPort.fromJson(json['port'])
              : null,
        );

  /// Creates a list of IngressServiceBackend from JSON data.
  static List<IngressServiceBackend> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => IngressServiceBackend.fromJson(e)).toList();
  }

  /// Name is the referenced service. The service must exist in the same namespace as the Ingress object.
  final String name;

  /// Port of the referenced service. A port name or port number is required for a IngressServiceBackend.
  final ServiceBackendPort? port;
}
