/// ConfigMapNodeConfigSource contains the information to reference a ConfigMap as a config source for the Node.
class ConfigMapNodeConfigSource {
  /// The main constructor.
  const ConfigMapNodeConfigSource({
    required this.kubeletConfigKey,
    required this.name,
    required this.namespace,
    this.resourceVersion,
    this.uid,
  });

  /// Creates a ConfigMapNodeConfigSource from JSON data.
  ConfigMapNodeConfigSource.fromJson(Map<String, dynamic> json)
      : this(
          kubeletConfigKey: json['kubeletConfigKey'],
          name: json['name'],
          namespace: json['namespace'],
          resourceVersion: json['resourceVersion'],
          uid: json['uid'],
        );

  /// Creates a list of ConfigMapNodeConfigSource from JSON data.
  static List<ConfigMapNodeConfigSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ConfigMapNodeConfigSource.fromJson(e)).toList();
  }

  /// Converts a ConfigMapNodeConfigSource instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['kubeletConfigKey'] = kubeletConfigKey;
    jsonData['name'] = name;
    jsonData['namespace'] = namespace;
    if (resourceVersion != null) {
      jsonData['resourceVersion'] = resourceVersion!;
    }
    if (uid != null) {
      jsonData['uid'] = uid!;
    }

    return jsonData;
  }

  /// KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the KubeletConfiguration structure This field is required in all cases.
  final String kubeletConfigKey;

  /// Name is the metadata.name of the referenced ConfigMap. This field is required in all cases.
  final String name;

  /// Namespace is the metadata.namespace of the referenced ConfigMap. This field is required in all cases.
  final String namespace;

  /// ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
  final String? resourceVersion;

  /// UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status.
  final String? uid;
}
