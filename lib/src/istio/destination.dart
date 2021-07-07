import 'port_selector.dart';

/// Destination indicates the network addressable service to which the request/connection will be sent after
/// processing a routing rule. The destination.host should unambiguously refer to a service in the service
/// registry. Istio’s service registry is composed of all the services found in the platform’s service
/// registry (e.g., Kubernetes services, Consul services), as well as services declared through the
/// [ServiceEntry] resource.
///
/// Note for Kubernetes users: When short names are used
/// (e.g. “reviews” instead of “reviews.default.svc.cluster.local”),
/// Istio will interpret the short name based on the namespace of the rule, not the service.
/// A rule in the “default” namespace containing a host “reviews will be interpreted
/// as “reviews.default.svc.cluster.local”, irrespective of the actual namespace associated
/// with the reviews service. To avoid potential misconfigurations, it is recommended to always use
/// fully qualified domain names over short names.
class Destination {
  const Destination({
    required this.host,
    this.subnet,
    this.port,
  });

  Destination.fromJson(Map<String, dynamic> json)
      : this(
          host: json['host'],
          subnet: json['subnet'],
          port:
              json['port'] != null ? PortSelector.fromJson(json['port']) : null,
        );

  /// The name of a service from the service registry. Service names are looked up from the platform’s service
  /// registry (e.g., Kubernetes services, Consul services, etc.) and from the hosts declared by [ServiceEntry].
  /// Traffic forwarded to destinations that are not found in either of the two, will be dropped.
  ///
  /// Note for Kubernetes users: When short names are used (e.g. “reviews” instead of “reviews.default.svc.cluster.local”),
  /// Istio will interpret the short name based on the namespace of the rule, not the service.
  /// A rule in the “default” namespace containing a host “reviews will be interpreted
  /// as “reviews.default.svc.cluster.local”, irrespective of the actual namespace associated with the
  /// reviews service. To avoid potential misconfiguration, it is recommended to always use fully qualified
  /// domain names over short names.
  final String host;

  /// The name of a subset within the service.
  /// Applicable only to services within the mesh.
  /// The subset must be defined in a corresponding [DestinationRule].
  final String? subnet;

  /// Specifies the port on the host that is being addressed.If a service exposes only
  /// a single port it is not required to explicitly select the port.
  final PortSelector? port;
}
