// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Represents a Persistent Disk resource in AWS.
///
/// An AWS EBS disk must exist before mounting to a container. The disk must also be in the same AWS zone as the kubelet. An AWS EBS disk can only be mounted as read/write once. AWS EBS volumes support ownership management and SELinux relabeling.
class AWSElasticBlockStoreVolumeSource {
  /// Default constructor.
  const AWSElasticBlockStoreVolumeSource({
    this.fsType,
    this.partition,
    this.readOnly,
    required this.volumeID,
  });

  /// Creates a [AWSElasticBlockStoreVolumeSource] from JSON data.
  factory AWSElasticBlockStoreVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempFsTypeJson = json['fsType'];
    final tempPartitionJson = json['partition'];
    final tempReadOnlyJson = json['readOnly'];
    final tempVolumeIDJson = json['volumeID'];

    final tempFsType = tempFsTypeJson;
    final tempPartition = tempPartitionJson;
    final tempReadOnly = tempReadOnlyJson;
    final tempVolumeID = tempVolumeIDJson;

    return AWSElasticBlockStoreVolumeSource(
      fsType: tempFsType,
      partition: tempPartition,
      readOnly: tempReadOnly,
      volumeID: tempVolumeID,
    );
  }

  /// fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore.
  final String? fsType;

  /// partition is the partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty).
  final int? partition;

  /// readOnly value true will force the readOnly setting in VolumeMounts. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore.
  final bool? readOnly;

  /// volumeID is unique ID of the persistent disk resource in AWS (Amazon EBS volume). More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore.
  final String volumeID;

  /// Converts a [AWSElasticBlockStoreVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempFsType = fsType;
    final tempPartition = partition;
    final tempReadOnly = readOnly;
    final tempVolumeID = volumeID;

    if (tempFsType != null) {
      jsonData['fsType'] = tempFsType;
    }

    if (tempPartition != null) {
      jsonData['partition'] = tempPartition;
    }

    if (tempReadOnly != null) {
      jsonData['readOnly'] = tempReadOnly;
    }

    jsonData['volumeID'] = tempVolumeID;

    return jsonData;
  }
}
