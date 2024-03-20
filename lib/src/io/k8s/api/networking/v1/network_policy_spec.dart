// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../networking_v1.dart';

/// NetworkPolicySpec provides the specification of a NetworkPolicy.
class NetworkPolicySpec {
  /// Default constructor.
  const NetworkPolicySpec({
    this.egress,
    this.ingress,
    required this.podSelector,
    this.policyTypes,
  });

  /// Creates a [NetworkPolicySpec] from JSON data.
  factory NetworkPolicySpec.fromJson(Map<String, dynamic> json) {
    final tempEgressJson = json['egress'];
    final tempIngressJson = json['ingress'];
    final tempPodSelectorJson = json['podSelector'];
    final tempPolicyTypesJson = json['policyTypes'];

    final List<NetworkPolicyEgressRule>? tempEgress = tempEgressJson != null
        ? List<dynamic>.from(tempEgressJson)
            .map(
              (e) => NetworkPolicyEgressRule.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final List<NetworkPolicyIngressRule>? tempIngress = tempIngressJson != null
        ? List<dynamic>.from(tempIngressJson)
            .map(
              (e) => NetworkPolicyIngressRule.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final LabelSelector tempPodSelector =
        LabelSelector.fromJson(tempPodSelectorJson);
    final List<String>? tempPolicyTypes = tempPolicyTypesJson != null
        ? List<String>.from(tempPolicyTypesJson)
        : null;

    return NetworkPolicySpec(
      egress: tempEgress,
      ingress: tempIngress,
      podSelector: tempPodSelector,
      policyTypes: tempPolicyTypes,
    );
  }

  /// egress is a list of egress rules to be applied to the selected pods. Outgoing traffic is allowed if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic matches at least one egress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy limits all outgoing traffic (and serves solely to ensure that the pods it selects are isolated by default). This field is beta-level in 1.8.
  final List<NetworkPolicyEgressRule>? egress;

  /// ingress is a list of ingress rules to be applied to the selected pods. Traffic is allowed to a pod if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic source is the pod's local node, OR if the traffic matches at least one ingress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy does not allow any traffic (and serves solely to ensure that the pods it selects are isolated by default).
  final List<NetworkPolicyIngressRule>? ingress;

  /// podSelector selects the pods to which this NetworkPolicy object applies. The array of ingress rules is applied to any pods selected by this field. Multiple network policies can select the same set of pods. In this case, the ingress rules for each are combined additively. This field is NOT optional and follows standard label selector semantics. An empty podSelector matches all pods in this namespace.
  final LabelSelector podSelector;

  /// A list of rule types that the NetworkPolicy relates to. Valid options are \["Ingress"\], \["Egress"\], or \["Ingress", "Egress"\]. If this field is not specified, it will default based on the existence of ingress or egress rules; policies that contain an egress section are assumed to affect egress, and all policies (whether or not they contain an ingress section) are assumed to affect ingress. If you want to write an egress-only policy, you must explicitly specify policyTypes \["Egress"\]. Likewise, if you want to write a policy that specifies that no egress is allowed, you must specify a policyTypes value that include "Egress" (since such a policy would not include an egress section and would otherwise default to just \["Ingress"\]). This field is beta-level in 1.8.
  final List<String>? policyTypes;

  /// Converts a [NetworkPolicySpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempEgress = egress;
    final tempIngress = ingress;
    final tempPodSelector = podSelector;
    final tempPolicyTypes = policyTypes;

    if (tempEgress != null) {
      jsonData['egress'] =
          tempEgress.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempIngress != null) {
      jsonData['ingress'] =
          tempIngress.map((e) => e.toJson()).toList(growable: false);
    }

    jsonData['podSelector'] = tempPodSelector.toJson();

    if (tempPolicyTypes != null) {
      jsonData['policyTypes'] = tempPolicyTypes;
    }

    return jsonData;
  }
}
