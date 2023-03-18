// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.networking.v1;

/// NetworkPolicyIngressRule describes a particular set of traffic that is allowed to the pods matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and from.
class NetworkPolicyIngressRule {
  /// Default constructor.
  const NetworkPolicyIngressRule({
    this.from,
    this.ports,
  });

  /// Creates a [NetworkPolicyIngressRule] from JSON data.
  factory NetworkPolicyIngressRule.fromJson(Map<String, dynamic> json) {
    final tempFromJson = json['from'];
    final tempPortsJson = json['ports'];

    final List<NetworkPolicyPeer>? tempFrom = tempFromJson != null
        ? List<dynamic>.from(tempFromJson)
            .map(
                (e) => NetworkPolicyPeer.fromJson(Map<String, dynamic>.from(e)))
            .toList()
        : null;

    final List<NetworkPolicyPort>? tempPorts = tempPortsJson != null
        ? List<dynamic>.from(tempPortsJson)
            .map(
                (e) => NetworkPolicyPort.fromJson(Map<String, dynamic>.from(e)))
            .toList()
        : null;

    return NetworkPolicyIngressRule(
      from: tempFrom,
      ports: tempPorts,
    );
  }

  /// from is a list of sources which should be able to access the pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all sources (traffic not restricted by source). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the from list.
  final List<NetworkPolicyPeer>? from;

  /// ports is a list of ports which should be made accessible on the pods selected for this rule. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
  final List<NetworkPolicyPort>? ports;

  /// Converts a [NetworkPolicyIngressRule] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempFrom = from;
    final tempPorts = ports;

    if (tempFrom != null) {
      jsonData['from'] = tempFrom;
    }

    if (tempPorts != null) {
      jsonData['ports'] = tempPorts;
    }

    return jsonData;
  }
}
