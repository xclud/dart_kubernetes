/// Represents a vSphere volume resource.
class VsphereVirtualDiskVolumeSource {
  /// The main constructor.
  const VsphereVirtualDiskVolumeSource({
    this.fsType,
    this.storagePolicyID,
    this.storagePolicyName,
    required this.volumePath,
  });

  /// Creates a VsphereVirtualDiskVolumeSource from JSON data.
  VsphereVirtualDiskVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          fsType: json['fsType'],
          storagePolicyID: json['storagePolicyID'],
          storagePolicyName: json['storagePolicyName'],
          volumePath: json['volumePath'],
        );

  /// Creates a list of VsphereVirtualDiskVolumeSource from JSON data.
  static List<VsphereVirtualDiskVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => VsphereVirtualDiskVolumeSource.fromJson(e)).toList();
  }

  /// Converts a VsphereVirtualDiskVolumeSource instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (fsType != null) {
      jsonData['fsType'] = fsType!;
    }
    if (storagePolicyID != null) {
      jsonData['storagePolicyID'] = storagePolicyID!;
    }
    if (storagePolicyName != null) {
      jsonData['storagePolicyName'] = storagePolicyName!;
    }
    jsonData['volumePath'] = volumePath;

    return jsonData;
  }

  /// FsType is filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  final String? fsType;

  /// StoragePolicyID is the storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName.
  final String? storagePolicyID;

  /// StoragePolicyName is the storage Policy Based Management (SPBM) profile name.
  final String? storagePolicyName;

  /// VolumePath is the path that identifies vSphere volume vmdk.
  final String volumePath;
}
