// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.networking.v1;

/// NetworkPolicyPeer describes a peer to allow traffic to/from. Only certain combinations of fields are allowed.
class NetworkPolicyPeer {
  /// Default constructor.
  const NetworkPolicyPeer({
    this.ipBlock,
    this.namespaceSelector,
    this.podSelector,
  });

  /// Creates a [NetworkPolicyPeer] from JSON data.
  factory NetworkPolicyPeer.fromJson(Map<String, dynamic> json) {
    final tempIpBlockJson = json['ipBlock'];
    final tempNamespaceSelectorJson = json['namespaceSelector'];
    final tempPodSelectorJson = json['podSelector'];

    final IPBlock? tempIpBlock =
        tempIpBlockJson != null ? IPBlock.fromJson(tempIpBlockJson) : null;
    final LabelSelector? tempNamespaceSelector =
        tempNamespaceSelectorJson != null
            ? LabelSelector.fromJson(tempNamespaceSelectorJson)
            : null;
    final LabelSelector? tempPodSelector = tempPodSelectorJson != null
        ? LabelSelector.fromJson(tempPodSelectorJson)
        : null;

    return NetworkPolicyPeer(
      ipBlock: tempIpBlock,
      namespaceSelector: tempNamespaceSelector,
      podSelector: tempPodSelector,
    );
  }

  /// ipBlock defines policy on a particular IPBlock. If this field is set then neither of the other fields can be.
  final IPBlock? ipBlock;

  /// namespaceSelector selects namespaces using cluster-scoped labels. This field follows standard label selector semantics; if present but empty, it selects all namespaces.
  ///
  /// If podSelector is also set, then the NetworkPolicyPeer as a whole selects the pods matching podSelector in the namespaces selected by namespaceSelector. Otherwise it selects all pods in the namespaces selected by namespaceSelector.
  final LabelSelector? namespaceSelector;

  /// podSelector is a label selector which selects pods. This field follows standard label selector semantics; if present but empty, it selects all pods.
  ///
  /// If namespaceSelector is also set, then the NetworkPolicyPeer as a whole selects the pods matching podSelector in the Namespaces selected by NamespaceSelector. Otherwise it selects the pods matching podSelector in the policy's own namespace.
  final LabelSelector? podSelector;

  /// Converts a [NetworkPolicyPeer] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempIpBlock = ipBlock;
    final tempNamespaceSelector = namespaceSelector;
    final tempPodSelector = podSelector;

    if (tempIpBlock != null) {
      jsonData['ipBlock'] = tempIpBlock.toJson();
    }

    if (tempNamespaceSelector != null) {
      jsonData['namespaceSelector'] = tempNamespaceSelector.toJson();
    }

    if (tempPodSelector != null) {
      jsonData['podSelector'] = tempPodSelector.toJson();
    }

    return jsonData;
  }
}
