import 'package:kubernetes/src/generated/kubernetes/api/core/v1/key_to_path.dart';

/// Adapts a ConfigMap into a volume.
///
/// The contents of the target ConfigMap's Data field will be presented in a volume as files using the keys in the Data field as the file names, unless the items element is populated with specific mappings of keys to paths. ConfigMap volumes support ownership management and SELinux relabeling.
class ConfigMapVolumeSource {
  /// The main constructor.
  const ConfigMapVolumeSource({
    this.defaultMode,
    this.items,
    this.name,
    this.optional,
  });

  /// Creates a ConfigMapVolumeSource from JSON data.
  ConfigMapVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          defaultMode: json['defaultMode'],
          items: json['items'] != null
              ? KeyToPath.listFromJson(
                  (json['items'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          name: json['name'],
          optional: json['optional'],
        );

  /// Creates a list of ConfigMapVolumeSource from JSON data.
  static List<ConfigMapVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ConfigMapVolumeSource.fromJson(e)).toList();
  }

  /// Converts a ConfigMapVolumeSource instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (defaultMode != null) {
      jsonData['defaultMode'] = defaultMode!;
    }
    if (items != null) {
      jsonData['items'] = items!.map((item) => item.toJson()).toList();
    }
    if (name != null) {
      jsonData['name'] = name!;
    }
    if (optional != null) {
      jsonData['optional'] = optional!;
    }

    return jsonData;
  }

  /// DefaultMode is optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  final int? defaultMode;

  /// Items if unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
  final List<KeyToPath>? items;

  /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names.
  final String? name;

  /// Optional specify whether the ConfigMap or its keys must be defined.
  final bool? optional;
}
