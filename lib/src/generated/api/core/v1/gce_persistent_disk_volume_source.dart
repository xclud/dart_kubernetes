/// Represents a Persistent Disk resource in Google Compute Engine.
///
/// A GCE PD must exist before mounting to a container. The disk must also be in the same GCE project and zone as the kubelet. A GCE PD can only be mounted as read/write once or read-only many times. GCE PDs support ownership management and SELinux relabeling.
class GCEPersistentDiskVolumeSource {
  /// The main constructor.
  const GCEPersistentDiskVolumeSource({
    this.fsType,
    this.partition,
    required this.pdName,
    this.readOnly,
  });

  /// Creates a GCEPersistentDiskVolumeSource from JSON data.
  GCEPersistentDiskVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          fsType: json['fsType'],
          partition: json['partition'],
          pdName: json['pdName'],
          readOnly: json['readOnly'],
        );

  /// Creates a list of GCEPersistentDiskVolumeSource from JSON data.
  static List<GCEPersistentDiskVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => GCEPersistentDiskVolumeSource.fromJson(e)).toList();
  }

  /// Converts a GCEPersistentDiskVolumeSource instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (fsType != null) {
      jsonData['fsType'] = fsType!;
    }
    if (partition != null) {
      jsonData['partition'] = partition!;
    }
    jsonData['pdName'] = pdName;
    if (readOnly != null) {
      jsonData['readOnly'] = readOnly!;
    }

    return jsonData;
  }

  /// Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk.
  final String? fsType;

  /// The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as "1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property empty). More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk.
  final int? partition;

  /// Unique name of the PD resource in GCE. Used to identify the disk in GCE. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk.
  final String pdName;

  /// ReadOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk.
  final bool? readOnly;
}
