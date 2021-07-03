/// A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.
class LabelSelectorRequirement {
  /// The main constructor.
  const LabelSelectorRequirement({
    required this.key,
    required this.operator,
    this.values,
  });

  /// Creates a LabelSelectorRequirement from JSON data.
  LabelSelectorRequirement.fromJson(Map<String, dynamic> json)
      : this(
          key: json['key'],
          operator: json['operator'],
          values:
              json['values'] != null ? List<String>.from(json['values']) : null,
        );

  /// Creates a list of LabelSelectorRequirement from JSON data.
  static List<LabelSelectorRequirement> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => LabelSelectorRequirement.fromJson(e)).toList();
  }

  /// key is the label key that the selector applies to.
  final String key;

  /// operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.
  final String operator;

  /// values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
  final List<String>? values;
}
