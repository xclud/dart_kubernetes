/// AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
class AzureDiskVolumeSource {
  /// The main constructor.
  const AzureDiskVolumeSource({
    this.cachingMode,
    required this.diskName,
    required this.diskURI,
    this.fsType,
    this.kind,
    this.readOnly,
  });

  /// Creates a AzureDiskVolumeSource from JSON data.
  AzureDiskVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          cachingMode: json['cachingMode'],
          diskName: json['diskName'],
          diskURI: json['diskURI'],
          fsType: json['fsType'],
          kind: json['kind'],
          readOnly: json['readOnly'],
        );

  /// Creates a list of AzureDiskVolumeSource from JSON data.
  static List<AzureDiskVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => AzureDiskVolumeSource.fromJson(e)).toList();
  }

  /// Converts a AzureDiskVolumeSource instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (cachingMode != null) {
      jsonData['cachingMode'] = cachingMode!;
    }
    jsonData['diskName'] = diskName;
    jsonData['diskURI'] = diskURI;
    if (fsType != null) {
      jsonData['fsType'] = fsType!;
    }
    if (kind != null) {
      jsonData['kind'] = kind!;
    }
    if (readOnly != null) {
      jsonData['readOnly'] = readOnly!;
    }

    return jsonData;
  }

  /// Host Caching mode: None, Read Only, Read Write.
  final String? cachingMode;

  /// The Name of the data disk in the blob storage.
  final String diskName;

  /// The URI the data disk in the blob storage.
  final String diskURI;

  /// Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  final String? fsType;

  /// Expected values Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared.
  final String? kind;

  /// Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;
}
