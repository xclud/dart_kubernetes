// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Adapts a Secret into a volume.
///
/// The contents of the target Secret's Data field will be presented in a volume as files using the keys in the Data field as the file names. Secret volumes support ownership management and SELinux relabeling.
class SecretVolumeSource {
  /// Default constructor.
  const SecretVolumeSource({
    this.defaultMode,
    this.items,
    this.optional,
    this.secretName,
  });

  /// Creates a [SecretVolumeSource] from JSON data.
  factory SecretVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempDefaultModeJson = json['defaultMode'];
    final tempItemsJson = json['items'];
    final tempOptionalJson = json['optional'];
    final tempSecretNameJson = json['secretName'];

    final tempDefaultMode = tempDefaultModeJson;
    final tempItems = tempItemsJson;
    final tempOptional = tempOptionalJson;
    final tempSecretName = tempSecretNameJson;

    return SecretVolumeSource(
      defaultMode: tempDefaultMode,
      items: tempItems,
      optional: tempOptional,
      secretName: tempSecretName,
    );
  }

  /// defaultMode is Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  final int? defaultMode;

  /// items If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
  final List<KeyToPath>? items;

  /// optional field specify whether the Secret or its keys must be defined.
  final bool? optional;

  /// secretName is the name of the secret in the pod's namespace to use. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret.
  final String? secretName;

  /// Converts a [SecretVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempDefaultMode = defaultMode;
    final tempItems = items;
    final tempOptional = optional;
    final tempSecretName = secretName;

    if (tempDefaultMode != null) {
      jsonData['defaultMode'] = tempDefaultMode;
    }

    if (tempItems != null) {
      jsonData['items'] = tempItems;
    }

    if (tempOptional != null) {
      jsonData['optional'] = tempOptional;
    }

    if (tempSecretName != null) {
      jsonData['secretName'] = tempSecretName;
    }

    return jsonData;
  }
}
