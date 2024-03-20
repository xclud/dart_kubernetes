// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// Represents a Photon Controller persistent disk resource.
class PhotonPersistentDiskVolumeSource {
  /// Default constructor.
  const PhotonPersistentDiskVolumeSource({
    this.fsType,
    required this.pdID,
  });

  /// Creates a [PhotonPersistentDiskVolumeSource] from JSON data.
  factory PhotonPersistentDiskVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempFsTypeJson = json['fsType'];
    final tempPdIDJson = json['pdID'];

    final String? tempFsType = tempFsTypeJson;
    final String tempPdID = tempPdIDJson;

    return PhotonPersistentDiskVolumeSource(
      fsType: tempFsType,
      pdID: tempPdID,
    );
  }

  /// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  final String? fsType;

  /// pdID is the ID that identifies Photon Controller persistent disk.
  final String pdID;

  /// Converts a [PhotonPersistentDiskVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempFsType = fsType;
    final tempPdID = pdID;

    if (tempFsType != null) {
      jsonData['fsType'] = tempFsType;
    }

    jsonData['pdID'] = tempPdID;

    return jsonData;
  }
}
