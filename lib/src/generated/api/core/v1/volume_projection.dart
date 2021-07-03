import 'package:kubernetes/src/generated/api/core/v1/config_map_projection.dart';
import 'package:kubernetes/src/generated/api/core/v1/downward_api_projection.dart';
import 'package:kubernetes/src/generated/api/core/v1/secret_projection.dart';
import 'package:kubernetes/src/generated/api/core/v1/service_account_token_projection.dart';

/// Projection that may be projected along with other supported volume types
class VolumeProjection {
  /// The main constructor.
  const VolumeProjection({
    this.configMap,
    this.downwardAPI,
    this.secret,
    this.serviceAccountToken,
  });

  /// Creates a VolumeProjection from JSON data.
  VolumeProjection.fromJson(Map<String, dynamic> json)
      : this(
          configMap: json['configMap'] != null
              ? ConfigMapProjection.fromJson(json['configMap'])
              : null,
          downwardAPI: json['downwardAPI'] != null
              ? DownwardAPIProjection.fromJson(json['downwardAPI'])
              : null,
          secret: json['secret'] != null
              ? SecretProjection.fromJson(json['secret'])
              : null,
          serviceAccountToken: json['serviceAccountToken'] != null
              ? ServiceAccountTokenProjection.fromJson(
                  json['serviceAccountToken'])
              : null,
        );

  /// Creates a list of VolumeProjection from JSON data.
  static List<VolumeProjection> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => VolumeProjection.fromJson(e)).toList();
  }

  /// information about the configMap data to project
  final ConfigMapProjection? configMap;

  /// information about the downwardAPI data to project
  final DownwardAPIProjection? downwardAPI;

  /// information about the secret data to project
  final SecretProjection? secret;

  /// information about the serviceAccountToken data to project
  final ServiceAccountTokenProjection? serviceAccountToken;
}
