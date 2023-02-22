import 'package:kubernetes/src/generated/kubernetes/api/core/v1/config_map_env_source.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/secret_env_source.dart';

/// EnvFromSource represents the source of a set of ConfigMaps.
class EnvFromSource {
  /// The main constructor.
  const EnvFromSource({
    this.configMapRef,
    this.prefix,
    this.secretRef,
  });

  /// Creates a EnvFromSource from JSON data.
  EnvFromSource.fromJson(Map<String, dynamic> json)
      : this(
          configMapRef: json['configMapRef'] != null ? ConfigMapEnvSource.fromJson(json['configMapRef']): null,
          prefix: json['prefix'],
          secretRef: json['secretRef'] != null ? SecretEnvSource.fromJson(json['secretRef']): null,
        );

  /// Creates a list of EnvFromSource from JSON data.
  static List<EnvFromSource> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => EnvFromSource.fromJson(e)).toList();
  }

  /// Converts a EnvFromSource instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(configMapRef != null) { jsonData['configMapRef'] = configMapRef!.toJson(); }
    if(prefix != null) { jsonData['prefix'] = prefix!; }
    if(secretRef != null) { jsonData['secretRef'] = secretRef!.toJson(); }
    

    return jsonData;
  }


  /// The ConfigMap to select from.
  final ConfigMapEnvSource? configMapRef;

  /// An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.
  final String? prefix;

  /// The Secret to select from.
  final SecretEnvSource? secretRef;
}
