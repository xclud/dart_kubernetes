// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// Adapts a ConfigMap into a projected volume.
///
/// The contents of the target ConfigMap's Data field will be presented in a projected volume as files using the keys in the Data field as the file names, unless the items element is populated with specific mappings of keys to paths. Note that this is identical to a configmap volume source without the default mode.
class ConfigMapProjection {
  /// Default constructor.
  const ConfigMapProjection({
    this.items,
    this.name,
    this.optional,
  });

  /// Creates a [ConfigMapProjection] from JSON data.
  factory ConfigMapProjection.fromJson(Map<String, dynamic> json) {
    final tempItemsJson = json['items'];
    final tempNameJson = json['name'];
    final tempOptionalJson = json['optional'];

    final List<KeyToPath>? tempItems = tempItemsJson != null
        ? List<dynamic>.from(tempItemsJson)
            .map(
              (e) => KeyToPath.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final String? tempName = tempNameJson;
    final bool? tempOptional = tempOptionalJson;

    return ConfigMapProjection(
      items: tempItems,
      name: tempName,
      optional: tempOptional,
    );
  }

  /// items if unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
  final List<KeyToPath>? items;

  /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names.
  final String? name;

  /// optional specify whether the ConfigMap or its keys must be defined.
  final bool? optional;

  /// Converts a [ConfigMapProjection] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempItems = items;
    final tempName = name;
    final tempOptional = optional;

    if (tempItems != null) {
      jsonData['items'] =
          tempItems.map((e) => e.toJson()).toList(growable: false);
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
