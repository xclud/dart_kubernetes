import 'package:kubernetes/src/generated/api/core/v1/key_to_path.dart';

/// Adapts a secret into a projected volume.
///
/// The contents of the target Secret's Data field will be presented in a projected volume as files using the keys in the Data field as the file names. Note that this is identical to a secret volume source without the default mode.
class SecretProjection {
  /// The main constructor.
  const SecretProjection({
    this.items,
    this.name,
    this.optional,
  });

  /// Creates a SecretProjection from JSON data.
  SecretProjection.fromJson(Map<String, dynamic> json)
      : this(
          items: json['items'] != null
              ? KeyToPath.listFromJson(
                  (json['items'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          name: json['name'],
          optional: json['optional'],
        );

  /// Creates a list of SecretProjection from JSON data.
  static List<SecretProjection> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => SecretProjection.fromJson(e)).toList();
  }

  /// If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
  final List<KeyToPath>? items;

  /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  final String? name;

  /// Specify whether the Secret or its key must be defined
  final bool? optional;
}
