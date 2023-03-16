// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// A node selector represents the union of the results of one or more label queries over a set of nodes; that is, it represents the OR of the selectors represented by the node selector terms.
class NodeSelector {
  /// Default constructor.
  const NodeSelector({
    required this.nodeSelectorTerms,
  });

  /// Creates a [NodeSelector] from JSON data.
  factory NodeSelector.fromJson(Map<String, dynamic> json) {
    final tempNodeSelectorTermsJson = json['nodeSelectorTerms'];

    final List<NodeSelectorTerm> tempNodeSelectorTerms =
        tempNodeSelectorTermsJson;

    return NodeSelector(
      nodeSelectorTerms: tempNodeSelectorTerms,
    );
  }

  /// Required. A list of node selector terms. The terms are ORed.
  final List<NodeSelectorTerm> nodeSelectorTerms;

  /// Converts a [NodeSelector] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempNodeSelectorTerms = nodeSelectorTerms;

    jsonData['nodeSelectorTerms'] = tempNodeSelectorTerms;

    return jsonData;
  }
}
