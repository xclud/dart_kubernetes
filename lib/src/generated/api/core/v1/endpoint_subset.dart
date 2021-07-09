import 'package:kubernetes/src/generated/api/core/v1/endpoint_address.dart';
import 'package:kubernetes/src/generated/api/core/v1/endpoint_port.dart';

/// EndpointSubset is a group of addresses with a common set of ports. The expanded set of endpoints is the Cartesian product of Addresses x Ports. For example, given:
///   {
///     Addresses: [{"ip": "10.10.1.1"}, {"ip": "10.10.2.2"}],
///     Ports:     [{"name": "a", "port": 8675}, {"name": "b", "port": 309}]
///   }
/// The resulting set of endpoints can be viewed as:
///     a: [ 10.10.1.1:8675, 10.10.2.2:8675 ],
///     b: [ 10.10.1.1:309, 10.10.2.2:309 ].
class EndpointSubset {
  /// The main constructor.
  const EndpointSubset({
    this.addresses,
    this.notReadyAddresses,
    this.ports,
  });

  /// Creates a EndpointSubset from JSON data.
  EndpointSubset.fromJson(Map<String, dynamic> json)
      : this(
          addresses: json['addresses'] != null
              ? EndpointAddress.listFromJson(
                  (json['addresses'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          notReadyAddresses: json['notReadyAddresses'] != null
              ? EndpointAddress.listFromJson(
                  (json['notReadyAddresses'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
          ports: json['ports'] != null
              ? EndpointPort.listFromJson(
                  (json['ports'] as Iterable).cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of EndpointSubset from JSON data.
  static List<EndpointSubset> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => EndpointSubset.fromJson(e)).toList();
  }

  /// IP addresses which offer the related ports that are marked as ready. These endpoints should be considered safe for load balancers and clients to utilize.
  final List<EndpointAddress>? addresses;

  /// IP addresses which offer the related ports but are not currently marked as ready because they have not yet finished starting, have recently failed a readiness check, or have recently failed a liveness check.
  final List<EndpointAddress>? notReadyAddresses;

  /// Port numbers available on the related IP addresses.
  final List<EndpointPort>? ports;
}
