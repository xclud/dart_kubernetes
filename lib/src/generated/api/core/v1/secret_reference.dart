/// SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
class SecretReference {
  /// The main constructor.
  const SecretReference({
    this.name,
    this.namespace,
  });

  /// Creates a SecretReference from JSON data.
  SecretReference.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          namespace: json['namespace'],
        );

  /// Creates a list of SecretReference from JSON data.
  static List<SecretReference> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => SecretReference.fromJson(e)).toList();
  }

  /// Name is unique within a namespace to reference a secret resource.
  final String? name;

  /// Namespace defines the space within which the secret name must be unique.
  final String? namespace;
}
