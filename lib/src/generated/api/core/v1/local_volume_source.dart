/// Local represents directly-attached storage with node affinity (Beta feature).
class LocalVolumeSource {
  /// The main constructor.
  const LocalVolumeSource({
    this.fsType,
    required this.path,
  });

  /// Creates a LocalVolumeSource from JSON data.
  LocalVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          fsType: json['fsType'],
          path: json['path'],
        );

  /// Creates a list of LocalVolumeSource from JSON data.
  static List<LocalVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => LocalVolumeSource.fromJson(e)).toList();
  }

  /// Converts a LocalVolumeSource instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (fsType != null) {
      jsonData['fsType'] = fsType!;
    }
    jsonData['path'] = path;

    return jsonData;
  }

  /// Filesystem type to mount. It applies only when the Path is a block device. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default value is to auto-select a fileystem if unspecified.
  final String? fsType;

  /// The full path to the volume on the node. It can be either a directory or block device (disk, partition, ...).
  final String path;
}
