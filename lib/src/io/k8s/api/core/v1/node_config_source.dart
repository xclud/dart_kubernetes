// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// NodeConfigSource specifies a source of node configuration. Exactly one subfield (excluding metadata) must be non-nil. This API is deprecated since 1.22.
class NodeConfigSource {
  /// Default constructor.
  const NodeConfigSource({
    this.configMap,
  });

  /// Creates a [NodeConfigSource] from JSON data.
  factory NodeConfigSource.fromJson(Map<String, dynamic> json) {
    final tempConfigMapJson = json['configMap'];

    final ConfigMapNodeConfigSource? tempConfigMap = tempConfigMapJson != null
        ? ConfigMapNodeConfigSource.fromJson(tempConfigMapJson)
        : null;

    return NodeConfigSource(
      configMap: tempConfigMap,
    );
  }

  /// ConfigMap is a reference to a Node's ConfigMap.
  final ConfigMapNodeConfigSource? configMap;

  /// Converts a [NodeConfigSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempConfigMap = configMap;

    if (tempConfigMap != null) {
      jsonData['configMap'] = tempConfigMap.toJson();
    }

    return jsonData;
  }
}
