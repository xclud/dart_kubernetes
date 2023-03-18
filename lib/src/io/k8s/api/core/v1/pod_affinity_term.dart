// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Defines a set of pods (namely those matching the labelSelector relative to the given namespace(s)) that this pod should be co-located (affinity) or not co-located (anti-affinity) with, where co-located is defined as running on a node whose value of the label with key <topologyKey> matches that of any node on which a pod of the set of pods is running.
class PodAffinityTerm {
  /// Default constructor.
  const PodAffinityTerm({
    this.labelSelector,
    this.namespaceSelector,
    this.namespaces,
    required this.topologyKey,
  });

  /// Creates a [PodAffinityTerm] from JSON data.
  factory PodAffinityTerm.fromJson(Map<String, dynamic> json) {
    final tempLabelSelectorJson = json['labelSelector'];
    final tempNamespaceSelectorJson = json['namespaceSelector'];
    final tempNamespacesJson = json['namespaces'];
    final tempTopologyKeyJson = json['topologyKey'];

    final LabelSelector? tempLabelSelector = tempLabelSelectorJson != null
        ? LabelSelector.fromJson(tempLabelSelectorJson)
        : null;
    final LabelSelector? tempNamespaceSelector =
        tempNamespaceSelectorJson != null
            ? LabelSelector.fromJson(tempNamespaceSelectorJson)
            : null;
    final List<String>? tempNamespaces = tempNamespacesJson != null
        ? List<String>.from(tempNamespacesJson)
        : null;
    final String tempTopologyKey = tempTopologyKeyJson;

    return PodAffinityTerm(
      labelSelector: tempLabelSelector,
      namespaceSelector: tempNamespaceSelector,
      namespaces: tempNamespaces,
      topologyKey: tempTopologyKey,
    );
  }

  /// A label query over a set of resources, in this case pods.
  final LabelSelector? labelSelector;

  /// A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means "this pod's namespace". An empty selector ({}) matches all namespaces.
  final LabelSelector? namespaceSelector;

  /// namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means "this pod's namespace".
  final List<String>? namespaces;

  /// This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.
  final String topologyKey;

  /// Converts a [PodAffinityTerm] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempLabelSelector = labelSelector;
    final tempNamespaceSelector = namespaceSelector;
    final tempNamespaces = namespaces;
    final tempTopologyKey = topologyKey;

    if (tempLabelSelector != null) {
      jsonData['labelSelector'] = tempLabelSelector.toJson();
    }

    if (tempNamespaceSelector != null) {
      jsonData['namespaceSelector'] = tempNamespaceSelector.toJson();
    }

    if (tempNamespaces != null) {
      jsonData['namespaces'] = tempNamespaces;
    }

    jsonData['topologyKey'] = tempTopologyKey;

    return jsonData;
  }
}
