/// A topology selector requirement is a selector that matches given label. This is an alpha feature and may change in the future.
class TopologySelectorLabelRequirement {
  /// The main constructor.
  const TopologySelectorLabelRequirement({
    required this.key,
    required this.values,
  });

  /// Creates a TopologySelectorLabelRequirement from JSON data.
  TopologySelectorLabelRequirement.fromJson(Map<String, dynamic> json)
      : this(
          key: json['key'],
          values:
              json['values'] != null ? List<String>.from(json['values']) : [],
        );

  /// Creates a list of TopologySelectorLabelRequirement from JSON data.
  static List<TopologySelectorLabelRequirement> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list
        .map((e) => TopologySelectorLabelRequirement.fromJson(e))
        .toList();
  }

  /// Converts a TopologySelectorLabelRequirement instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['key'] = key;
    jsonData['values'] = values;

    return jsonData;
  }

  /// The label key that the selector applies to.
  final String key;

  /// An array of string values. One value must match the label to be selected. Each entry in Values is ORed.
  final List<String> values;
}
