import 'package:kubernetes/src/generated/api/networking/v1/network_policy_egress_rule.dart';
import 'package:kubernetes/src/generated/api/networking/v1/network_policy_ingress_rule.dart';
import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/label_selector.dart';

/// NetworkPolicySpec provides the specification of a NetworkPolicy
class NetworkPolicySpec {
  /// The main constructor.
  const NetworkPolicySpec({
    this.egress,
    this.ingress,
    required this.podSelector,
    this.policyTypes,
  });

  /// Creates a NetworkPolicySpec from JSON data.
  NetworkPolicySpec.fromJson(Map<String, dynamic> json)
      : this(
          egress: json['egress'] != null
              ? NetworkPolicyEgressRule.listFromJson(
                  (json['egress'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          ingress: json['ingress'] != null
              ? NetworkPolicyIngressRule.listFromJson(
                  (json['ingress'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          podSelector: LabelSelector.fromJson(json['podSelector']),
          policyTypes: json['policyTypes'] != null
              ? List<String>.from(json['policyTypes'])
              : null,
        );

  /// Creates a list of NetworkPolicySpec from JSON data.
  static List<NetworkPolicySpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NetworkPolicySpec.fromJson(e)).toList();
  }

  /// List of egress rules to be applied to the selected pods. Outgoing traffic is allowed if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic matches at least one egress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy limits all outgoing traffic (and serves solely to ensure that the pods it selects are isolated by default). This field is beta-level in 1.8
  final List<NetworkPolicyEgressRule>? egress;

  /// List of ingress rules to be applied to the selected pods. Traffic is allowed to a pod if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic source is the pod's local node, OR if the traffic matches at least one ingress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy does not allow any traffic (and serves solely to ensure that the pods it selects are isolated by default)
  final List<NetworkPolicyIngressRule>? ingress;

  /// Selects the pods to which this NetworkPolicy object applies. The array of ingress rules is applied to any pods selected by this field. Multiple network policies can select the same set of pods. In this case, the ingress rules for each are combined additively. This field is NOT optional and follows standard label selector semantics. An empty podSelector matches all pods in this namespace.
  final LabelSelector podSelector;

  /// List of rule types that the NetworkPolicy relates to. Valid options are ["Ingress"], ["Egress"], or ["Ingress", "Egress"]. If this field is not specified, it will default based on the existence of Ingress or Egress rules; policies that contain an Egress section are assumed to affect Egress, and all policies (whether or not they contain an Ingress section) are assumed to affect Ingress. If you want to write an egress-only policy, you must explicitly specify policyTypes [ "Egress" ]. Likewise, if you want to write a policy that specifies that no egress is allowed, you must specify a policyTypes value that include "Egress" (since such a policy would not include an Egress section and would otherwise default to just [ "Ingress" ]). This field is beta-level in 1.8
  final List<String>? policyTypes;
}
