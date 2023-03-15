// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as read/write once. Fibre Channel volumes support ownership management and SELinux relabeling.
class FCVolumeSource {
  /// Default constructor.
  const FCVolumeSource({
    this.fsType,
    this.lun,
    this.readOnly,
    this.targetWWNs,
    this.wwids,
  });

  /// Creates a [FCVolumeSource] from JSON data.
  factory FCVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempFsTypeJson = json['fsType'];
    final tempLunJson = json['lun'];
    final tempReadOnlyJson = json['readOnly'];
    final tempTargetWWNsJson = json['targetWWNs'];
    final tempWwidsJson = json['wwids'];

    final tempFsType = tempFsTypeJson;
    final tempLun = tempLunJson;
    final tempReadOnly = tempReadOnlyJson;
    final tempTargetWWNs = tempTargetWWNsJson;
    final tempWwids = tempWwidsJson;

    return FCVolumeSource(
      fsType: tempFsType,
      lun: tempLun,
      readOnly: tempReadOnly,
      targetWWNs: tempTargetWWNs,
      wwids: tempWwids,
    );
  }

  /// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  final String? fsType;

  /// lun is Optional: FC target lun number.
  final int? lun;

  /// readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;

  /// targetWWNs is Optional: FC target worldwide names (WWNs).
  final List<String>? targetWWNs;

  /// wwids Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.
  final List<String>? wwids;

  /// Converts a [FCVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempFsType = fsType;
    final tempLun = lun;
    final tempReadOnly = readOnly;
    final tempTargetWWNs = targetWWNs;
    final tempWwids = wwids;

    if (tempFsType != null) {
      jsonData['fsType'] = tempFsType;
    }

    if (tempLun != null) {
      jsonData['lun'] = tempLun;
    }

    if (tempReadOnly != null) {
      jsonData['readOnly'] = tempReadOnly;
    }

    if (tempTargetWWNs != null) {
      jsonData['targetWWNs'] = tempTargetWWNs;
    }

    if (tempWwids != null) {
      jsonData['wwids'] = tempWwids;
    }

    return jsonData;
  }
}
