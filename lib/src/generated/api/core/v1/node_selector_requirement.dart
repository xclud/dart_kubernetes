/// A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.
class NodeSelectorRequirement {
  /// The main constructor.
  const NodeSelectorRequirement({
    required this.key,
    required this.operator,
    this.values,
  });

  /// Creates a NodeSelectorRequirement from JSON data.
  NodeSelectorRequirement.fromJson(Map<String, dynamic> json)
      : this(
          key: json['key'],
          operator: json['operator'],
          values:
              json['values'] != null ? List<String>.from(json['values']) : null,
        );

  /// Creates a list of NodeSelectorRequirement from JSON data.
  static List<NodeSelectorRequirement> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NodeSelectorRequirement.fromJson(e)).toList();
  }

  /// Converts a NodeSelectorRequirement instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['key'] = key;
    jsonData['operator'] = operator;
    if (values != null) {
      jsonData['values'] = values!;
    }

    return jsonData;
  }

  /// The label key that the selector applies to.
  final String key;

  /// Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.
  ///
  ///.
  final String operator;

  /// An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.
  final List<String>? values;
}
