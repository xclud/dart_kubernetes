// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// EndpointSubset is a group of addresses with a common set of ports. The expanded set of endpoints is the Cartesian product of Addresses x Ports. For example, given:
///
/// 	{
/// 	  Addresses: [{"ip": "10.10.1.1"}, {"ip": "10.10.2.2"}],
/// 	  Ports:     [{"name": "a", "port": 8675}, {"name": "b", "port": 309}]
/// 	}
///
/// The resulting set of endpoints can be viewed as:
///
/// 	a: [ 10.10.1.1:8675, 10.10.2.2:8675 ],
/// 	b: [ 10.10.1.1:309, 10.10.2.2:309 ].
class EndpointSubset {
  /// Default constructor.
  const EndpointSubset({
    this.addresses,
    this.notReadyAddresses,
    this.ports,
  });

  /// Creates a [EndpointSubset] from JSON data.
  factory EndpointSubset.fromJson(Map<String, dynamic> json) {
    final tempAddressesJson = json['addresses'];
    final tempNotReadyAddressesJson = json['notReadyAddresses'];
    final tempPortsJson = json['ports'];

    final List<EndpointAddress>? tempAddresses = tempAddressesJson != null
        ? List<dynamic>.from(tempAddressesJson)
            .map(
              (e) => EndpointAddress.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final List<EndpointAddress>? tempNotReadyAddresses =
        tempNotReadyAddressesJson != null
            ? List<dynamic>.from(tempNotReadyAddressesJson)
                .map(
                  (e) => EndpointAddress.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final List<EndpointPort>? tempPorts = tempPortsJson != null
        ? List<dynamic>.from(tempPortsJson)
            .map(
              (e) => EndpointPort.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    return EndpointSubset(
      addresses: tempAddresses,
      notReadyAddresses: tempNotReadyAddresses,
      ports: tempPorts,
    );
  }

  /// IP addresses which offer the related ports that are marked as ready. These endpoints should be considered safe for load balancers and clients to utilize.
  final List<EndpointAddress>? addresses;

  /// IP addresses which offer the related ports but are not currently marked as ready because they have not yet finished starting, have recently failed a readiness check, or have recently failed a liveness check.
  final List<EndpointAddress>? notReadyAddresses;

  /// Port numbers available on the related IP addresses.
  final List<EndpointPort>? ports;

  /// Converts a [EndpointSubset] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAddresses = addresses;
    final tempNotReadyAddresses = notReadyAddresses;
    final tempPorts = ports;

    if (tempAddresses != null) {
      jsonData['addresses'] =
          tempAddresses.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempNotReadyAddresses != null) {
      jsonData['notReadyAddresses'] =
          tempNotReadyAddresses.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempPorts != null) {
      jsonData['ports'] =
          tempPorts.map((e) => e.toJson()).toList(growable: false);
    }

    return jsonData;
  }
}
