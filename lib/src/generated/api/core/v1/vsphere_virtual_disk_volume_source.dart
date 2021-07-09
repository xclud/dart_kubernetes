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

  /// Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  final String? fsType;

  /// Storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName.
  final String? storagePolicyID;

  /// Storage Policy Based Management (SPBM) profile name.
  final String? storagePolicyName;

  /// Path that identifies vSphere volume vmdk.
  final String volumePath;
}
