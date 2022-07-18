/// A scoped-resource selector requirement is a selector that contains values, a scope name, and an operator that relates the scope name and values.
class ScopedResourceSelectorRequirement {
  /// The main constructor.
  const ScopedResourceSelectorRequirement({
    required this.operator,
    required this.scopeName,
    this.values,
  });

  /// Creates a ScopedResourceSelectorRequirement from JSON data.
  ScopedResourceSelectorRequirement.fromJson(Map<String, dynamic> json)
      : this(
          operator: json['operator'],
          scopeName: json['scopeName'],
          values:
              json['values'] != null ? List<String>.from(json['values']) : null,
        );

  /// Creates a list of ScopedResourceSelectorRequirement from JSON data.
  static List<ScopedResourceSelectorRequirement> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list
        .map((e) => ScopedResourceSelectorRequirement.fromJson(e))
        .toList();
  }

  /// Converts a ScopedResourceSelectorRequirement instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['operator'] = operator;
    jsonData['scopeName'] = scopeName;
    if (values != null) {
      jsonData['values'] = values!;
    }

    return jsonData;
  }

  /// Represents a scope's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist.
  ///
  ///.
  final String operator;

  /// The name of the scope that the selector applies to.
  ///
  ///.
  final String scopeName;

  /// An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
  final List<String>? values;
}
