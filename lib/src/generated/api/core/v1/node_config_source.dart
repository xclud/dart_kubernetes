import 'package:kubernetes/src/generated/api/core/v1/config_map_node_config_source.dart';

/// NodeConfigSource specifies a source of node configuration. Exactly one subfield (excluding metadata) must be non-nil. This API is deprecated since 1.22.
class NodeConfigSource {
  /// The main constructor.
  const NodeConfigSource({
    this.configMap,
  });

  /// Creates a NodeConfigSource from JSON data.
  NodeConfigSource.fromJson(Map<String, dynamic> json)
      : this(
          configMap: json['configMap'] != null
              ? ConfigMapNodeConfigSource.fromJson(json['configMap'])
              : null,
        );

  /// Creates a list of NodeConfigSource from JSON data.
  static List<NodeConfigSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NodeConfigSource.fromJson(e)).toList();
  }

  /// Converts a NodeConfigSource instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (configMap != null) {
      jsonData['configMap'] = configMap!.toJson();
    }

    return jsonData;
  }

  /// ConfigMap is a reference to a Node's ConfigMap.
  final ConfigMapNodeConfigSource? configMap;
}
