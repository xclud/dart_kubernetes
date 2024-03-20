// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// Projection that may be projected along with other supported volume types.
class VolumeProjection {
  /// Default constructor.
  const VolumeProjection({
    this.configMap,
    this.downwardAPI,
    this.secret,
    this.serviceAccountToken,
  });

  /// Creates a [VolumeProjection] from JSON data.
  factory VolumeProjection.fromJson(Map<String, dynamic> json) {
    final tempConfigMapJson = json['configMap'];
    final tempDownwardAPIJson = json['downwardAPI'];
    final tempSecretJson = json['secret'];
    final tempServiceAccountTokenJson = json['serviceAccountToken'];

    final ConfigMapProjection? tempConfigMap = tempConfigMapJson != null
        ? ConfigMapProjection.fromJson(tempConfigMapJson)
        : null;
    final DownwardAPIProjection? tempDownwardAPI = tempDownwardAPIJson != null
        ? DownwardAPIProjection.fromJson(tempDownwardAPIJson)
        : null;
    final SecretProjection? tempSecret = tempSecretJson != null
        ? SecretProjection.fromJson(tempSecretJson)
        : null;
    final ServiceAccountTokenProjection? tempServiceAccountToken =
        tempServiceAccountTokenJson != null
            ? ServiceAccountTokenProjection.fromJson(
                tempServiceAccountTokenJson)
            : null;

    return VolumeProjection(
      configMap: tempConfigMap,
      downwardAPI: tempDownwardAPI,
      secret: tempSecret,
      serviceAccountToken: tempServiceAccountToken,
    );
  }

  /// configMap information about the configMap data to project.
  final ConfigMapProjection? configMap;

  /// downwardAPI information about the downwardAPI data to project.
  final DownwardAPIProjection? downwardAPI;

  /// secret information about the secret data to project.
  final SecretProjection? secret;

  /// serviceAccountToken is information about the serviceAccountToken data to project.
  final ServiceAccountTokenProjection? serviceAccountToken;

  /// Converts a [VolumeProjection] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempConfigMap = configMap;
    final tempDownwardAPI = downwardAPI;
    final tempSecret = secret;
    final tempServiceAccountToken = serviceAccountToken;

    if (tempConfigMap != null) {
      jsonData['configMap'] = tempConfigMap.toJson();
    }

    if (tempDownwardAPI != null) {
      jsonData['downwardAPI'] = tempDownwardAPI.toJson();
    }

    if (tempSecret != null) {
      jsonData['secret'] = tempSecret.toJson();
    }

    if (tempServiceAccountToken != null) {
      jsonData['serviceAccountToken'] = tempServiceAccountToken.toJson();
    }

    return jsonData;
  }
}
