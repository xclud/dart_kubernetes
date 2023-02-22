import 'package:kubernetes/src/generated/kubernetes/api/core/v1/key_to_path.dart';

/// Adapts a Secret into a volume.
/// 
/// The contents of the target Secret's Data field will be presented in a volume as files using the keys in the Data field as the file names. Secret volumes support ownership management and SELinux relabeling.
class SecretVolumeSource {
  /// The main constructor.
  const SecretVolumeSource({
    this.defaultMode,
    this.items,
    this.optional,
    this.secretName,
  });

  /// Creates a SecretVolumeSource from JSON data.
  SecretVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          defaultMode: json['defaultMode'],
          items: json['items'] != null ? KeyToPath.listFromJson((json['items'] as Iterable).cast<Map<String, dynamic>>()): null,
          optional: json['optional'],
          secretName: json['secretName'],
        );

  /// Creates a list of SecretVolumeSource from JSON data.
  static List<SecretVolumeSource> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => SecretVolumeSource.fromJson(e)).toList();
  }

  /// Converts a SecretVolumeSource instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(defaultMode != null) { jsonData['defaultMode'] = defaultMode!; }
    if(items != null) { jsonData['items'] = items!.map((item) => item.toJson()).toList(); }
    if(optional != null) { jsonData['optional'] = optional!; }
    if(secretName != null) { jsonData['secretName'] = secretName!; }
    

    return jsonData;
  }


  /// DefaultMode is Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  final int? defaultMode;

  /// Items If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
  final List<KeyToPath>? items;

  /// Optional field specify whether the Secret or its keys must be defined.
  final bool? optional;

  /// SecretName is the name of the secret in the pod's namespace to use. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret.
  final String? secretName;
}
