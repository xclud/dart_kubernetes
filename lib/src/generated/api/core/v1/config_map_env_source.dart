/// ConfigMapEnvSource selects a ConfigMap to populate the environment variables with.
///
/// The contents of the target ConfigMap's Data field will represent the key-value pairs as environment variables.
class ConfigMapEnvSource {
  /// The main constructor.
  const ConfigMapEnvSource({
    this.name,
    this.optional,
  });

  /// Creates a ConfigMapEnvSource from JSON data.
  ConfigMapEnvSource.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          optional: json['optional'],
        );

  /// Creates a list of ConfigMapEnvSource from JSON data.
  static List<ConfigMapEnvSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ConfigMapEnvSource.fromJson(e)).toList();
  }

  /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  final String? name;

  /// Specify whether the ConfigMap must be defined
  final bool? optional;
}
