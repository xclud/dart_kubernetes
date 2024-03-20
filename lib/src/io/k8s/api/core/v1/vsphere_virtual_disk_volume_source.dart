// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// Represents a vSphere volume resource.
class VsphereVirtualDiskVolumeSource {
  /// Default constructor.
  const VsphereVirtualDiskVolumeSource({
    this.fsType,
    this.storagePolicyID,
    this.storagePolicyName,
    required this.volumePath,
  });

  /// Creates a [VsphereVirtualDiskVolumeSource] from JSON data.
  factory VsphereVirtualDiskVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempFsTypeJson = json['fsType'];
    final tempStoragePolicyIDJson = json['storagePolicyID'];
    final tempStoragePolicyNameJson = json['storagePolicyName'];
    final tempVolumePathJson = json['volumePath'];

    final String? tempFsType = tempFsTypeJson;
    final String? tempStoragePolicyID = tempStoragePolicyIDJson;
    final String? tempStoragePolicyName = tempStoragePolicyNameJson;
    final String tempVolumePath = tempVolumePathJson;

    return VsphereVirtualDiskVolumeSource(
      fsType: tempFsType,
      storagePolicyID: tempStoragePolicyID,
      storagePolicyName: tempStoragePolicyName,
      volumePath: tempVolumePath,
    );
  }

  /// fsType is filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  final String? fsType;

  /// storagePolicyID is the storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName.
  final String? storagePolicyID;

  /// storagePolicyName is the storage Policy Based Management (SPBM) profile name.
  final String? storagePolicyName;

  /// volumePath is the path that identifies vSphere volume vmdk.
  final String volumePath;

  /// Converts a [VsphereVirtualDiskVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempFsType = fsType;
    final tempStoragePolicyID = storagePolicyID;
    final tempStoragePolicyName = storagePolicyName;
    final tempVolumePath = volumePath;

    if (tempFsType != null) {
      jsonData['fsType'] = tempFsType;
    }

    if (tempStoragePolicyID != null) {
      jsonData['storagePolicyID'] = tempStoragePolicyID;
    }

    if (tempStoragePolicyName != null) {
      jsonData['storagePolicyName'] = tempStoragePolicyName;
    }

    jsonData['volumePath'] = tempVolumePath;

    return jsonData;
  }
}
