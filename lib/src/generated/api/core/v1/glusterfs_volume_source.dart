/// Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.
class GlusterfsVolumeSource {
  /// The main constructor.
  const GlusterfsVolumeSource({
    required this.endpoints,
    required this.path,
    this.readOnly,
  });

  /// Creates a GlusterfsVolumeSource from JSON data.
  GlusterfsVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          endpoints: json['endpoints'],
          path: json['path'],
          readOnly: json['readOnly'],
        );

  /// Creates a list of GlusterfsVolumeSource from JSON data.
  static List<GlusterfsVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => GlusterfsVolumeSource.fromJson(e)).toList();
  }

  /// Converts a GlusterfsVolumeSource instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['endpoints'] = endpoints;
    jsonData['path'] = path;
    if (readOnly != null) {
      jsonData['readOnly'] = readOnly!;
    }

    return jsonData;
  }

  /// EndpointsName is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod.
  final String endpoints;

  /// Path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod.
  final String path;

  /// ReadOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod.
  final bool? readOnly;
}
