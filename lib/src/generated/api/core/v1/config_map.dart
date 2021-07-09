import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';

/// ConfigMap holds configuration data for pods to consume.
class ConfigMap {
  /// The main constructor.
  const ConfigMap({
    this.apiVersion,
    this.binaryData,
    this.data,
    this.immutable,
    this.kind,
    this.metadata,
  });

  /// Creates a ConfigMap from JSON data.
  ConfigMap.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          binaryData: json['binaryData'] != null
              ? Map<String, String>.from(json['binaryData'])
              : null,
          data: json['data'] != null
              ? Map<String, String>.from(json['data'])
              : null,
          immutable: json['immutable'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
        );

  /// Creates a list of ConfigMap from JSON data.
  static List<ConfigMap> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ConfigMap.fromJson(e)).toList();
  }

  /// Converts a ConfigMap instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (apiVersion != null) {
      jsonData['apiVersion'] = apiVersion!;
    }
    if (binaryData != null) {
      jsonData['binaryData'] = binaryData!;
    }
    if (data != null) {
      jsonData['data'] = data!;
    }
    if (immutable != null) {
      jsonData['immutable'] = immutable!;
    }
    if (kind != null) {
      jsonData['kind'] = kind!;
    }
    if (metadata != null) {
      jsonData['metadata'] = metadata!.toJson();
    }

    return jsonData;
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// BinaryData contains the binary data. Each key must consist of alphanumeric characters, '-', '_' or '.'. BinaryData can contain byte sequences that are not in the UTF-8 range. The keys stored in BinaryData must not overlap with the ones in the Data field, this is enforced during validation process. Using this field will require 1.10+ apiserver and kubelet.
  final Map<String, String>? binaryData;

  /// Data contains the configuration data. Each key must consist of alphanumeric characters, '-', '_' or '.'. Values with non-UTF-8 byte sequences must use the BinaryData field. The keys stored in Data must not overlap with the keys in the BinaryData field, this is enforced during validation process.
  final Map<String, String>? data;

  /// Immutable, if set to true, ensures that data stored in the ConfigMap cannot be updated (only object metadata can be modified). If not set to true, the field can be modified at any time. Defaulted to nil.
  final bool? immutable;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;
}
