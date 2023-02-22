import 'package:kubernetes/src/generated/kubernetes/api/core/v1/node_selector_term.dart';

/// A node selector represents the union of the results of one or more label queries over a set of nodes; that is, it represents the OR of the selectors represented by the node selector terms.
class NodeSelector {
  /// The main constructor.
  const NodeSelector({
    required this.nodeSelectorTerms,
  });

  /// Creates a NodeSelector from JSON data.
  NodeSelector.fromJson(Map<String, dynamic> json)
      : this(
          nodeSelectorTerms: json['nodeSelectorTerms'] != null ? NodeSelectorTerm.listFromJson((json['nodeSelectorTerms'] as Iterable).cast<Map<String, dynamic>>()): [],
        );

  /// Creates a list of NodeSelector from JSON data.
  static List<NodeSelector> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NodeSelector.fromJson(e)).toList();
  }

  /// Converts a NodeSelector instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    jsonData['nodeSelectorTerms'] = nodeSelectorTerms.map((item) => item.toJson()).toList();
    

    return jsonData;
  }


  /// Required. A list of node selector terms. The terms are ORed.
  final List<NodeSelectorTerm> nodeSelectorTerms;
}
