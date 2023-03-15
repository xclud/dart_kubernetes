// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Represents a Persistent Disk resource in Google Compute Engine.
///
/// A GCE PD must exist before mounting to a container. The disk must also be in the same GCE project and zone as the kubelet. A GCE PD can only be mounted as read/write once or read-only many times. GCE PDs support ownership management and SELinux relabeling.
class GCEPersistentDiskVolumeSource {
  /// Default constructor.
  const GCEPersistentDiskVolumeSource({
    this.fsType,
    this.partition,
    required this.pdName,
    this.readOnly,
  });

  /// Creates a [GCEPersistentDiskVolumeSource] from JSON data.
  factory GCEPersistentDiskVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempFsTypeJson = json['fsType'];
    final tempPartitionJson = json['partition'];
    final tempPdNameJson = json['pdName'];
    final tempReadOnlyJson = json['readOnly'];

    final tempFsType = tempFsTypeJson;
    final tempPartition = tempPartitionJson;
    final tempPdName = tempPdNameJson;
    final tempReadOnly = tempReadOnlyJson;

    return GCEPersistentDiskVolumeSource(
      fsType: tempFsType,
      partition: tempPartition,
      pdName: tempPdName,
      readOnly: tempReadOnly,
    );
  }

  /// fsType is filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk.
  final String? fsType;

  /// partition is the partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty). More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk.
  final int? partition;

  /// pdName is unique name of the PD resource in GCE. Used to identify the disk in GCE. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk.
  final String pdName;

  /// readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk.
  final bool? readOnly;

  /// Converts a [GCEPersistentDiskVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempFsType = fsType;
    final tempPartition = partition;
    final tempPdName = pdName;
    final tempReadOnly = readOnly;

    if (tempFsType != null) {
      jsonData['fsType'] = tempFsType;
    }

    if (tempPartition != null) {
      jsonData['partition'] = tempPartition;
    }

    jsonData['pdName'] = tempPdName;

    if (tempReadOnly != null) {
      jsonData['readOnly'] = tempReadOnly;
    }

    return jsonData;
  }
}
