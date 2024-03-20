// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// ConfigMapNodeConfigSource contains the information to reference a ConfigMap as a config source for the Node. This API is deprecated since 1.22: https://git.k8s.io/enhancements/keps/sig-node/281-dynamic-kubelet-configuration.
class ConfigMapNodeConfigSource {
  /// Default constructor.
  const ConfigMapNodeConfigSource({
    required this.kubeletConfigKey,
    required this.name,
    required this.namespace,
    this.resourceVersion,
    this.uid,
  });

  /// Creates a [ConfigMapNodeConfigSource] from JSON data.
  factory ConfigMapNodeConfigSource.fromJson(Map<String, dynamic> json) {
    final tempKubeletConfigKeyJson = json['kubeletConfigKey'];
    final tempNameJson = json['name'];
    final tempNamespaceJson = json['namespace'];
    final tempResourceVersionJson = json['resourceVersion'];
    final tempUidJson = json['uid'];

    final String tempKubeletConfigKey = tempKubeletConfigKeyJson;
    final String tempName = tempNameJson;
    final String tempNamespace = tempNamespaceJson;
    final String? tempResourceVersion = tempResourceVersionJson;
    final String? tempUid = tempUidJson;

    return ConfigMapNodeConfigSource(
      kubeletConfigKey: tempKubeletConfigKey,
      name: tempName,
      namespace: tempNamespace,
      resourceVersion: tempResourceVersion,
      uid: tempUid,
    );
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

  /// Converts a [ConfigMapNodeConfigSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempKubeletConfigKey = kubeletConfigKey;
    final tempName = name;
    final tempNamespace = namespace;
    final tempResourceVersion = resourceVersion;
    final tempUid = uid;

    jsonData['kubeletConfigKey'] = tempKubeletConfigKey;

    jsonData['name'] = tempName;

    jsonData['namespace'] = tempNamespace;

    if (tempResourceVersion != null) {
      jsonData['resourceVersion'] = tempResourceVersion;
    }

    if (tempUid != null) {
      jsonData['uid'] = tempUid;
    }

    return jsonData;
  }
}
