// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// DownwardAPIVolumeFile represents information to create the file containing the pod field.
class DownwardAPIVolumeFile {
  /// Default constructor.
  const DownwardAPIVolumeFile({
    this.fieldRef,
    this.mode,
    required this.path,
    this.resourceFieldRef,
  });

  /// Creates a [DownwardAPIVolumeFile] from JSON data.
  factory DownwardAPIVolumeFile.fromJson(Map<String, dynamic> json) {
    final tempFieldRefJson = json['fieldRef'];
    final tempModeJson = json['mode'];
    final tempPathJson = json['path'];
    final tempResourceFieldRefJson = json['resourceFieldRef'];

    final ObjectFieldSelector? tempFieldRef = tempFieldRefJson != null
        ? ObjectFieldSelector.fromJson(tempFieldRefJson)
        : null;
    final int? tempMode = tempModeJson;
    final String tempPath = tempPathJson;
    final ResourceFieldSelector? tempResourceFieldRef =
        tempResourceFieldRefJson != null
            ? ResourceFieldSelector.fromJson(tempResourceFieldRefJson)
            : null;

    return DownwardAPIVolumeFile(
      fieldRef: tempFieldRef,
      mode: tempMode,
      path: tempPath,
      resourceFieldRef: tempResourceFieldRef,
    );
  }

  /// Required: Selects a field of the pod: only annotations, labels, name and namespace are supported.
  final ObjectFieldSelector? fieldRef;

  /// Optional: mode bits used to set permissions on this file, must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  final int? mode;

  /// Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'.
  final String path;

  /// Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported.
  final ResourceFieldSelector? resourceFieldRef;

  /// Converts a [DownwardAPIVolumeFile] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempFieldRef = fieldRef;
    final tempMode = mode;
    final tempPath = path;
    final tempResourceFieldRef = resourceFieldRef;

    if (tempFieldRef != null) {
      jsonData['fieldRef'] = tempFieldRef.toJson();
    }

    if (tempMode != null) {
      jsonData['mode'] = tempMode;
    }

    jsonData['path'] = tempPath;

    if (tempResourceFieldRef != null) {
      jsonData['resourceFieldRef'] = tempResourceFieldRef.toJson();
    }

    return jsonData;
  }
}
