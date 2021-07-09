/// Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as read/write once. Fibre Channel volumes support ownership management and SELinux relabeling.
class FCVolumeSource {
  /// The main constructor.
  const FCVolumeSource({
    this.fsType,
    this.lun,
    this.readOnly,
    this.targetWWNs,
    this.wwids,
  });

  /// Creates a FCVolumeSource from JSON data.
  FCVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          fsType: json['fsType'],
          lun: json['lun'],
          readOnly: json['readOnly'],
          targetWWNs: json['targetWWNs'] != null
              ? List<String>.from(json['targetWWNs'])
              : null,
          wwids:
              json['wwids'] != null ? List<String>.from(json['wwids']) : null,
        );

  /// Creates a list of FCVolumeSource from JSON data.
  static List<FCVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => FCVolumeSource.fromJson(e)).toList();
  }

  /// Converts a FCVolumeSource instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (fsType != null) {
      jsonData['fsType'] = fsType!;
    }
    if (lun != null) {
      jsonData['lun'] = lun!;
    }
    if (readOnly != null) {
      jsonData['readOnly'] = readOnly!;
    }
    if (targetWWNs != null) {
      jsonData['targetWWNs'] = targetWWNs!;
    }
    if (wwids != null) {
      jsonData['wwids'] = wwids!;
    }

    return jsonData;
  }

  /// Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  final String? fsType;

  /// Optional: FC target lun number.
  final int? lun;

  /// Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;

  /// Optional: FC target worldwide names (WWNs).
  final List<String>? targetWWNs;

  /// Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.
  final List<String>? wwids;
}
