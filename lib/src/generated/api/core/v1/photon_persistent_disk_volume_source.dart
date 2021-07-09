/// Represents a Photon Controller persistent disk resource.
class PhotonPersistentDiskVolumeSource {
  /// The main constructor.
  const PhotonPersistentDiskVolumeSource({
    this.fsType,
    required this.pdID,
  });

  /// Creates a PhotonPersistentDiskVolumeSource from JSON data.
  PhotonPersistentDiskVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          fsType: json['fsType'],
          pdID: json['pdID'],
        );

  /// Creates a list of PhotonPersistentDiskVolumeSource from JSON data.
  static List<PhotonPersistentDiskVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list
        .map((e) => PhotonPersistentDiskVolumeSource.fromJson(e))
        .toList();
  }

  /// Converts a PhotonPersistentDiskVolumeSource instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (fsType != null) {
      jsonData['fsType'] = fsType!;
    }
    jsonData['pdID'] = pdID;

    return jsonData;
  }

  /// Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  final String? fsType;

  /// ID that identifies Photon Controller persistent disk.
  final String pdID;
}
