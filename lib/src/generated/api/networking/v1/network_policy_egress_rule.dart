import 'package:kubernetes/src/generated/api/networking/v1/network_policy_port.dart';
import 'package:kubernetes/src/generated/api/networking/v1/network_policy_peer.dart';

/// NetworkPolicyEgressRule describes a particular set of traffic that is allowed out of pods matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and to. This type is beta-level in 1.8.
class NetworkPolicyEgressRule {
  /// The main constructor.
  const NetworkPolicyEgressRule({
    this.ports,
    this.to,
  });

  /// Creates a NetworkPolicyEgressRule from JSON data.
  NetworkPolicyEgressRule.fromJson(Map<String, dynamic> json)
      : this(
          ports: json['ports'] != null
              ? NetworkPolicyPort.listFromJson(
                  (json['ports'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          to: json['to'] != null
              ? NetworkPolicyPeer.listFromJson(
                  (json['to'] as Iterable).cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of NetworkPolicyEgressRule from JSON data.
  static List<NetworkPolicyEgressRule> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NetworkPolicyEgressRule.fromJson(e)).toList();
  }

  /// List of destination ports for outgoing traffic. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
  final List<NetworkPolicyPort>? ports;

  /// List of destinations for outgoing traffic of pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all destinations (traffic not restricted by destination). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the to list.
  final List<NetworkPolicyPeer>? to;
}
