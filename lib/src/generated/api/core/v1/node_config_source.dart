import 'package:kubernetes/src/generated/api/core/v1/config_map_node_config_source.dart';

/// NodeConfigSource specifies a source of node configuration. Exactly one subfield (excluding metadata) must be non-nil.
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

  /// ConfigMap is a reference to a Node's ConfigMap
  final ConfigMapNodeConfigSource? configMap;
}
