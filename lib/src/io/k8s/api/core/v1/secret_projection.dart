// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Adapts a secret into a projected volume.
///
/// The contents of the target Secret's Data field will be presented in a projected volume as files using the keys in the Data field as the file names. Note that this is identical to a secret volume source without the default mode.
class SecretProjection {
  /// Default constructor.
  const SecretProjection({
    this.items,
    this.name,
    this.optional,
  });

  /// Creates a [SecretProjection] from JSON data.
  factory SecretProjection.fromJson(Map<String, dynamic> json) {
    final tempItemsJson = json['items'];
    final tempNameJson = json['name'];
    final tempOptionalJson = json['optional'];

    final List<KeyToPath>? tempItems = tempItemsJson;
    final String? tempName = tempNameJson;
    final bool? tempOptional = tempOptionalJson;

    return SecretProjection(
      items: tempItems,
      name: tempName,
      optional: tempOptional,
    );
  }

  /// items if unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
  final List<KeyToPath>? items;

  /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names.
  final String? name;

  /// optional field specify whether the Secret or its key must be defined.
  final bool? optional;

  /// Converts a [SecretProjection] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempItems = items;
    final tempName = name;
    final tempOptional = optional;

    if (tempItems != null) {
      jsonData['items'] = tempItems;
    }

    if (tempName != null) {
      jsonData['name'] = tempName;
    }

    if (tempOptional != null) {
      jsonData['optional'] = tempOptional;
    }

    return jsonData;
  }
}
