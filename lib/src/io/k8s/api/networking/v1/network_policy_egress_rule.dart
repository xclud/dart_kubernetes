// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.networking.v1;

/// NetworkPolicyEgressRule describes a particular set of traffic that is allowed out of pods matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and to. This type is beta-level in 1.8.
class NetworkPolicyEgressRule {
  /// Default constructor.
  const NetworkPolicyEgressRule({
    this.ports,
    this.to,
  });

  /// Creates a [NetworkPolicyEgressRule] from JSON data.
  factory NetworkPolicyEgressRule.fromJson(Map<String, dynamic> json) {
    final tempPortsJson = json['ports'];
    final tempToJson = json['to'];

    final List<NetworkPolicyPort>? tempPorts = tempPortsJson != null
        ? List<dynamic>.from(tempPortsJson)
            .map(
              (e) => NetworkPolicyPort.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final List<NetworkPolicyPeer>? tempTo = tempToJson != null
        ? List<dynamic>.from(tempToJson)
            .map(
              (e) => NetworkPolicyPeer.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    return NetworkPolicyEgressRule(
      ports: tempPorts,
      to: tempTo,
    );
  }

  /// ports is a list of destination ports for outgoing traffic. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
  final List<NetworkPolicyPort>? ports;

  /// to is a list of destinations for outgoing traffic of pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all destinations (traffic not restricted by destination). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the to list.
  final List<NetworkPolicyPeer>? to;

  /// Converts a [NetworkPolicyEgressRule] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempPorts = ports;
    final tempTo = to;

    if (tempPorts != null) {
      jsonData['ports'] = tempPorts;
    }

    if (tempTo != null) {
      jsonData['to'] = tempTo;
    }

    return jsonData;
  }
}
