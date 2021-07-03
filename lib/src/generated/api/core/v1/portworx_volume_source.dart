/// PortworxVolumeSource represents a Portworx volume resource.
class PortworxVolumeSource {
  /// The main constructor.
  const PortworxVolumeSource({
    this.fsType,
    this.readOnly,
    required this.volumeID,
  });

  /// Creates a PortworxVolumeSource from JSON data.
  PortworxVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          fsType: json['fsType'],
          readOnly: json['readOnly'],
          volumeID: json['volumeID'],
        );

  /// Creates a list of PortworxVolumeSource from JSON data.
  static List<PortworxVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PortworxVolumeSource.fromJson(e)).toList();
  }

  /// FSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs". Implicitly inferred to be "ext4" if unspecified.
  final String? fsType;

  /// Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;

  /// VolumeID uniquely identifies a Portworx volume
  final String volumeID;
}
