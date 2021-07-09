/// Represents a Persistent Disk resource in AWS.
///
/// An AWS EBS disk must exist before mounting to a container. The disk must also be in the same AWS zone as the kubelet. An AWS EBS disk can only be mounted as read/write once. AWS EBS volumes support ownership management and SELinux relabeling.
class AWSElasticBlockStoreVolumeSource {
  /// The main constructor.
  const AWSElasticBlockStoreVolumeSource({
    this.fsType,
    this.partition,
    this.readOnly,
    required this.volumeID,
  });

  /// Creates a AWSElasticBlockStoreVolumeSource from JSON data.
  AWSElasticBlockStoreVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          fsType: json['fsType'],
          partition: json['partition'],
          readOnly: json['readOnly'],
          volumeID: json['volumeID'],
        );

  /// Creates a list of AWSElasticBlockStoreVolumeSource from JSON data.
  static List<AWSElasticBlockStoreVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list
        .map((e) => AWSElasticBlockStoreVolumeSource.fromJson(e))
        .toList();
  }

  /// Converts a AWSElasticBlockStoreVolumeSource instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (fsType != null) {
      jsonData['fsType'] = fsType!;
    }
    if (partition != null) {
      jsonData['partition'] = partition!;
    }
    if (readOnly != null) {
      jsonData['readOnly'] = readOnly!;
    }
    jsonData['volumeID'] = volumeID;

    return jsonData;
  }

  /// Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore.
  final String? fsType;

  /// The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty).
  final int? partition;

  /// Specify "true" to force and set the ReadOnly property in VolumeMounts to "true". If omitted, the default is "false". More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore.
  final bool? readOnly;

  /// Unique ID of the persistent disk resource in AWS (Amazon EBS volume). More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore.
  final String volumeID;
}
