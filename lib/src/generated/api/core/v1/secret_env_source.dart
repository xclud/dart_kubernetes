/// SecretEnvSource selects a Secret to populate the environment variables with.
///
/// The contents of the target Secret's Data field will represent the key-value pairs as environment variables.
class SecretEnvSource {
  /// The main constructor.
  const SecretEnvSource({
    this.name,
    this.optional,
  });

  /// Creates a SecretEnvSource from JSON data.
  SecretEnvSource.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          optional: json['optional'],
        );

  /// Creates a list of SecretEnvSource from JSON data.
  static List<SecretEnvSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => SecretEnvSource.fromJson(e)).toList();
  }

  /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names.
  final String? name;

  /// Specify whether the Secret must be defined.
  final bool? optional;
}
