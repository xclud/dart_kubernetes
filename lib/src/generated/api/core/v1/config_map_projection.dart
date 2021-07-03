import 'package:kubernetes/src/generated/api/core/v1/key_to_path.dart';

/// Adapts a ConfigMap into a projected volume.
///
/// The contents of the target ConfigMap's Data field will be presented in a projected volume as files using the keys in the Data field as the file names, unless the items element is populated with specific mappings of keys to paths. Note that this is identical to a configmap volume source without the default mode.
class ConfigMapProjection {
  /// The main constructor.
  const ConfigMapProjection({
    this.items,
    this.name,
    this.optional,
  });

  /// Creates a ConfigMapProjection from JSON data.
  ConfigMapProjection.fromJson(Map<String, dynamic> json)
      : this(
          items: json['items'] != null
              ? KeyToPath.listFromJson(
                  (json['items'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          name: json['name'],
          optional: json['optional'],
        );

  /// Creates a list of ConfigMapProjection from JSON data.
  static List<ConfigMapProjection> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ConfigMapProjection.fromJson(e)).toList();
  }

  /// If unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
  final List<KeyToPath>? items;

  /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  final String? name;

  /// Specify whether the ConfigMap or its keys must be defined
  final bool? optional;
}
