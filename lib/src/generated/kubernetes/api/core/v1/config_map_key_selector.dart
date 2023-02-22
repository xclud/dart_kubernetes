/// Selects a key from a ConfigMap.
class ConfigMapKeySelector {
  /// The main constructor.
  const ConfigMapKeySelector({
    required this.key,
    this.name,
    this.optional,
  });

  /// Creates a ConfigMapKeySelector from JSON data.
  ConfigMapKeySelector.fromJson(Map<String, dynamic> json)
      : this(
          key: json['key'],
          name: json['name'],
          optional: json['optional'],
        );

  /// Creates a list of ConfigMapKeySelector from JSON data.
  static List<ConfigMapKeySelector> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ConfigMapKeySelector.fromJson(e)).toList();
  }

  /// Converts a ConfigMapKeySelector instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['key'] = key;
    if (name != null) {
      jsonData['name'] = name!;
    }
    if (optional != null) {
      jsonData['optional'] = optional!;
    }

    return jsonData;
  }

  /// The key to select.
  final String key;

  /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names.
  final String? name;

  /// Specify whether the ConfigMap or its key must be defined.
  final bool? optional;
}
