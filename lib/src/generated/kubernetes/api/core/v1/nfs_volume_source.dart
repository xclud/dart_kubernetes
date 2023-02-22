
/// Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support ownership management or SELinux relabeling.
class NFSVolumeSource {
  /// The main constructor.
  const NFSVolumeSource({
    required this.path,
    this.readOnly,
    required this.server,
  });

  /// Creates a NFSVolumeSource from JSON data.
  NFSVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          path: json['path'],
          readOnly: json['readOnly'],
          server: json['server'],
        );

  /// Creates a list of NFSVolumeSource from JSON data.
  static List<NFSVolumeSource> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NFSVolumeSource.fromJson(e)).toList();
  }

  /// Converts a NFSVolumeSource instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    jsonData['path'] = path;
    if(readOnly != null) { jsonData['readOnly'] = readOnly!; }
    jsonData['server'] = server;
    

    return jsonData;
  }


  /// Path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs.
  final String path;

  /// ReadOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs.
  final bool? readOnly;

  /// Server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs.
  final String server;
}
