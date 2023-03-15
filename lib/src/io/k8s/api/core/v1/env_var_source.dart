// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// EnvVarSource represents a source for the value of an EnvVar.
class EnvVarSource {
  /// Default constructor.
  const EnvVarSource({
    this.configMapKeyRef,
    this.fieldRef,
    this.resourceFieldRef,
    this.secretKeyRef,
  });

  /// Creates a [EnvVarSource] from JSON data.
  factory EnvVarSource.fromJson(Map<String, dynamic> json) {
    final tempConfigMapKeyRefJson = json['configMapKeyRef'];
    final tempFieldRefJson = json['fieldRef'];
    final tempResourceFieldRefJson = json['resourceFieldRef'];
    final tempSecretKeyRefJson = json['secretKeyRef'];

    final tempConfigMapKeyRef = tempConfigMapKeyRefJson != null
        ? ConfigMapKeySelector.fromJson(tempConfigMapKeyRefJson)
        : null;
    final tempFieldRef = tempFieldRefJson != null
        ? ObjectFieldSelector.fromJson(tempFieldRefJson)
        : null;
    final tempResourceFieldRef = tempResourceFieldRefJson != null
        ? ResourceFieldSelector.fromJson(tempResourceFieldRefJson)
        : null;
    final tempSecretKeyRef = tempSecretKeyRefJson != null
        ? SecretKeySelector.fromJson(tempSecretKeyRefJson)
        : null;

    return EnvVarSource(
      configMapKeyRef: tempConfigMapKeyRef,
      fieldRef: tempFieldRef,
      resourceFieldRef: tempResourceFieldRef,
      secretKeyRef: tempSecretKeyRef,
    );
  }

  /// Selects a key of a ConfigMap.
  final ConfigMapKeySelector? configMapKeyRef;

  /// Selects a field of the pod: supports metadata.name, metadata.namespace, `metadata.labels['<KEY>']`, `metadata.annotations['<KEY>']`, spec.nodeName, spec.serviceAccountName, status.hostIP, status.podIP, status.podIPs.
  final ObjectFieldSelector? fieldRef;

  /// Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported.
  final ResourceFieldSelector? resourceFieldRef;

  /// Selects a key of a secret in the pod's namespace.
  final SecretKeySelector? secretKeyRef;

  /// Converts a [EnvVarSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempConfigMapKeyRef = configMapKeyRef;
    final tempFieldRef = fieldRef;
    final tempResourceFieldRef = resourceFieldRef;
    final tempSecretKeyRef = secretKeyRef;

    if (tempConfigMapKeyRef != null) {
      jsonData['configMapKeyRef'] = tempConfigMapKeyRef.toJson();
    }

    if (tempFieldRef != null) {
      jsonData['fieldRef'] = tempFieldRef.toJson();
    }

    if (tempResourceFieldRef != null) {
      jsonData['resourceFieldRef'] = tempResourceFieldRef.toJson();
    }

    if (tempSecretKeyRef != null) {
      jsonData['secretKeyRef'] = tempSecretKeyRef.toJson();
    }

    return jsonData;
  }
}
