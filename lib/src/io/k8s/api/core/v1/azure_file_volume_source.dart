// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
class AzureFileVolumeSource {
  /// Default constructor.
  const AzureFileVolumeSource({
    this.readOnly,
    required this.secretName,
    required this.shareName,
  });

  /// Creates a [AzureFileVolumeSource] from JSON data.
  factory AzureFileVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempReadOnlyJson = json['readOnly'];
    final tempSecretNameJson = json['secretName'];
    final tempShareNameJson = json['shareName'];

    final bool? tempReadOnly = tempReadOnlyJson;
    final String tempSecretName = tempSecretNameJson;
    final String tempShareName = tempShareNameJson;

    return AzureFileVolumeSource(
      readOnly: tempReadOnly,
      secretName: tempSecretName,
      shareName: tempShareName,
    );
  }

  /// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;

  /// secretName is the  name of secret that contains Azure Storage Account Name and Key.
  final String secretName;

  /// shareName is the azure share Name.
  final String shareName;

  /// Converts a [AzureFileVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempReadOnly = readOnly;
    final tempSecretName = secretName;
    final tempShareName = shareName;

    if (tempReadOnly != null) {
      jsonData['readOnly'] = tempReadOnly;
    }

    jsonData['secretName'] = tempSecretName;

    jsonData['shareName'] = tempShareName;

    return jsonData;
  }
}
