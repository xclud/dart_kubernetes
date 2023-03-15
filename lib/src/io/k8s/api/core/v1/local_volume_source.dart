// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Local represents directly-attached storage with node affinity (Beta feature).
class LocalVolumeSource {
  /// Default constructor.
  const LocalVolumeSource({
    this.fsType,
    required this.path,
  });

  /// Creates a [LocalVolumeSource] from JSON data.
  factory LocalVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempFsTypeJson = json['fsType'];
    final tempPathJson = json['path'];

    final tempFsType = tempFsTypeJson;
    final tempPath = tempPathJson;

    return LocalVolumeSource(
      fsType: tempFsType,
      path: tempPath,
    );
  }

  /// fsType is the filesystem type to mount. It applies only when the Path is a block device. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default value is to auto-select a filesystem if unspecified.
  final String? fsType;

  /// path of the full path to the volume on the node. It can be either a directory or block device (disk, partition, ...).
  final String path;

  /// Converts a [LocalVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempFsType = fsType;
    final tempPath = path;

    if (tempFsType != null) {
      jsonData['fsType'] = tempFsType;
    }

    jsonData['path'] = tempPath;

    return jsonData;
  }
}
