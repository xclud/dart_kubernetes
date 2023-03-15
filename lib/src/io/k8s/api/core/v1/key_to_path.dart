// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Maps a string key to a path within a volume.
class KeyToPath {
  /// Default constructor.
  const KeyToPath({
    required this.key,
    this.mode,
    required this.path,
  });

  /// Creates a [KeyToPath] from JSON data.
  factory KeyToPath.fromJson(Map<String, dynamic> json) {
    final tempKeyJson = json['key'];
    final tempModeJson = json['mode'];
    final tempPathJson = json['path'];

    final tempKey = tempKeyJson;
    final tempMode = tempModeJson;
    final tempPath = tempPathJson;

    return KeyToPath(
      key: tempKey,
      mode: tempMode,
      path: tempPath,
    );
  }

  /// key is the key to project.
  final String key;

  /// mode is Optional: mode bits used to set permissions on this file. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  final int? mode;

  /// path is the relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'.
  final String path;

  /// Converts a [KeyToPath] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempKey = key;
    final tempMode = mode;
    final tempPath = path;

    jsonData['key'] = tempKey;

    if (tempMode != null) {
      jsonData['mode'] = tempMode;
    }

    jsonData['path'] = tempPath;

    return jsonData;
  }
}
