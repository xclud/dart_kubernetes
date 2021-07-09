/// Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not support ownership management or SELinux relabeling.
class GlusterfsPersistentVolumeSource {
  /// The main constructor.
  const GlusterfsPersistentVolumeSource({
    required this.endpoints,
    this.endpointsNamespace,
    required this.path,
    this.readOnly,
  });

  /// Creates a GlusterfsPersistentVolumeSource from JSON data.
  GlusterfsPersistentVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          endpoints: json['endpoints'],
          endpointsNamespace: json['endpointsNamespace'],
          path: json['path'],
          readOnly: json['readOnly'],
        );

  /// Creates a list of GlusterfsPersistentVolumeSource from JSON data.
  static List<GlusterfsPersistentVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list
        .map((e) => GlusterfsPersistentVolumeSource.fromJson(e))
        .toList();
  }

  /// Converts a GlusterfsPersistentVolumeSource instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['endpoints'] = endpoints;
    if (endpointsNamespace != null) {
      jsonData['endpointsNamespace'] = endpointsNamespace!;
    }
    jsonData['path'] = path;
    if (readOnly != null) {
      jsonData['readOnly'] = readOnly!;
    }

    return jsonData;
  }

  /// EndpointsName is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod.
  final String endpoints;

  /// EndpointsNamespace is the namespace that contains Glusterfs endpoint. If this field is empty, the EndpointNamespace defaults to the same namespace as the bound PVC. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod.
  final String? endpointsNamespace;

  /// Path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod.
  final String path;

  /// ReadOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod.
  final bool? readOnly;
}
