import 'package:kubernetes/src/generated/kubernetes/api/networking/v1/network_policy_peer.dart';
import 'package:kubernetes/src/generated/kubernetes/api/networking/v1/network_policy_port.dart';

/// NetworkPolicyIngressRule describes a particular set of traffic that is allowed to the pods matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and from.
class NetworkPolicyIngressRule {
  /// The main constructor.
  const NetworkPolicyIngressRule({
    this.from,
    this.ports,
  });

  /// Creates a NetworkPolicyIngressRule from JSON data.
  NetworkPolicyIngressRule.fromJson(Map<String, dynamic> json)
      : this(
          from: json['from'] != null
              ? NetworkPolicyPeer.listFromJson(
                  (json['from'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          ports: json['ports'] != null
              ? NetworkPolicyPort.listFromJson(
                  (json['ports'] as Iterable).cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of NetworkPolicyIngressRule from JSON data.
  static List<NetworkPolicyIngressRule> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NetworkPolicyIngressRule.fromJson(e)).toList();
  }

  /// Converts a NetworkPolicyIngressRule instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (from != null) {
      jsonData['from'] = from!.map((item) => item.toJson()).toList();
    }
    if (ports != null) {
      jsonData['ports'] = ports!.map((item) => item.toJson()).toList();
    }

    return jsonData;
  }

  /// From is a list of sources which should be able to access the pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all sources (traffic not restricted by source). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the from list.
  final List<NetworkPolicyPeer>? from;

  /// Ports is a list of ports which should be made accessible on the pods selected for this rule. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
  final List<NetworkPolicyPort>? ports;
}
