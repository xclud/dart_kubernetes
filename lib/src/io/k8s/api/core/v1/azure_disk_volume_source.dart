// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
class AzureDiskVolumeSource {
  /// Default constructor.
  const AzureDiskVolumeSource({
    this.cachingMode,
    required this.diskName,
    required this.diskURI,
    this.fsType,
    this.kind,
    this.readOnly,
  });

  /// Creates a [AzureDiskVolumeSource] from JSON data.
  factory AzureDiskVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempCachingModeJson = json['cachingMode'];
    final tempDiskNameJson = json['diskName'];
    final tempDiskURIJson = json['diskURI'];
    final tempFsTypeJson = json['fsType'];
    final tempKindJson = json['kind'];
    final tempReadOnlyJson = json['readOnly'];

    final String? tempCachingMode = tempCachingModeJson;
    final String tempDiskName = tempDiskNameJson;
    final String tempDiskURI = tempDiskURIJson;
    final String? tempFsType = tempFsTypeJson;
    final String? tempKind = tempKindJson;
    final bool? tempReadOnly = tempReadOnlyJson;

    return AzureDiskVolumeSource(
      cachingMode: tempCachingMode,
      diskName: tempDiskName,
      diskURI: tempDiskURI,
      fsType: tempFsType,
      kind: tempKind,
      readOnly: tempReadOnly,
    );
  }

  /// cachingMode is the Host Caching mode: None, Read Only, Read Write.
  final String? cachingMode;

  /// diskName is the Name of the data disk in the blob storage.
  final String diskName;

  /// diskURI is the URI of data disk in the blob storage.
  final String diskURI;

  /// fsType is Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  final String? fsType;

  /// kind expected values are Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared.
  final String? kind;

  /// readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;

  /// Converts a [AzureDiskVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempCachingMode = cachingMode;
    final tempDiskName = diskName;
    final tempDiskURI = diskURI;
    final tempFsType = fsType;
    final tempKind = kind;
    final tempReadOnly = readOnly;

    if (tempCachingMode != null) {
      jsonData['cachingMode'] = tempCachingMode;
    }

    jsonData['diskName'] = tempDiskName;

    jsonData['diskURI'] = tempDiskURI;

    if (tempFsType != null) {
      jsonData['fsType'] = tempFsType;
    }

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempReadOnly != null) {
      jsonData['readOnly'] = tempReadOnly;
    }

    return jsonData;
  }
}
