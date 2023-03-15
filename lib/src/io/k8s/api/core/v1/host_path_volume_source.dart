// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Represents a host path mapped into a pod. Host path volumes do not support ownership management or SELinux relabeling.
class HostPathVolumeSource {
  /// Default constructor.
  const HostPathVolumeSource({
    required this.path,
    this.type,
  });

  /// Creates a [HostPathVolumeSource] from JSON data.
  factory HostPathVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempPathJson = json['path'];
    final tempTypeJson = json['type'];

    final tempPath = tempPathJson;
    final tempType = tempTypeJson;

    return HostPathVolumeSource(
      path: tempPath,
      type: tempType,
    );
  }

  /// path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath.
  final String path;

  /// type for HostPath Volume Defaults to "" More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath.
  final String? type;

  /// Converts a [HostPathVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempPath = path;
    final tempType = type;

    jsonData['path'] = tempPath;

    if (tempType != null) {
      jsonData['type'] = tempType;
    }

    return jsonData;
  }
}
