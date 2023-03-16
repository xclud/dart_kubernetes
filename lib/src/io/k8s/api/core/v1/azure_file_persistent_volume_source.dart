// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
class AzureFilePersistentVolumeSource {
  /// Default constructor.
  const AzureFilePersistentVolumeSource({
    this.readOnly,
    required this.secretName,
    this.secretNamespace,
    required this.shareName,
  });

  /// Creates a [AzureFilePersistentVolumeSource] from JSON data.
  factory AzureFilePersistentVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempReadOnlyJson = json['readOnly'];
    final tempSecretNameJson = json['secretName'];
    final tempSecretNamespaceJson = json['secretNamespace'];
    final tempShareNameJson = json['shareName'];

    final bool? tempReadOnly = tempReadOnlyJson;
    final String tempSecretName = tempSecretNameJson;
    final String? tempSecretNamespace = tempSecretNamespaceJson;
    final String tempShareName = tempShareNameJson;

    return AzureFilePersistentVolumeSource(
      readOnly: tempReadOnly,
      secretName: tempSecretName,
      secretNamespace: tempSecretNamespace,
      shareName: tempShareName,
    );
  }

  /// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;

  /// secretName is the name of secret that contains Azure Storage Account Name and Key.
  final String secretName;

  /// secretNamespace is the namespace of the secret that contains Azure Storage Account Name and Key default is the same as the Pod.
  final String? secretNamespace;

  /// shareName is the azure Share Name.
  final String shareName;

  /// Converts a [AzureFilePersistentVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempReadOnly = readOnly;
    final tempSecretName = secretName;
    final tempSecretNamespace = secretNamespace;
    final tempShareName = shareName;

    if (tempReadOnly != null) {
      jsonData['readOnly'] = tempReadOnly;
    }

    jsonData['secretName'] = tempSecretName;

    if (tempSecretNamespace != null) {
      jsonData['secretNamespace'] = tempSecretNamespace;
    }

    jsonData['shareName'] = tempShareName;

    return jsonData;
  }
}
