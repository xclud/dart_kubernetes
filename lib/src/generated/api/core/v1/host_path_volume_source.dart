/// Represents a host path mapped into a pod. Host path volumes do not support ownership management or SELinux relabeling.
class HostPathVolumeSource {
  /// The main constructor.
  const HostPathVolumeSource({
    required this.path,
    this.type,
  });

  /// Creates a HostPathVolumeSource from JSON data.
  HostPathVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          path: json['path'],
          type: json['type'],
        );

  /// Creates a list of HostPathVolumeSource from JSON data.
  static List<HostPathVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => HostPathVolumeSource.fromJson(e)).toList();
  }

  /// Path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
  final String path;

  /// Type for HostPath Volume Defaults to "" More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
  final String? type;
}
