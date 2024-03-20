// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// ConfigMap holds configuration data for pods to consume.
class ConfigMap {
  /// Default constructor.
  const ConfigMap({
    this.apiVersion,
    this.binaryData,
    this.data,
    this.immutable,
    this.kind,
    this.metadata,
  });

  /// Creates a [ConfigMap] from JSON data.
  factory ConfigMap.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempBinaryDataJson = json['binaryData'];
    final tempDataJson = json['data'];
    final tempImmutableJson = json['immutable'];
    final tempKindJson = json['kind'];
    final tempMetadataJson = json['metadata'];

    final String? tempApiVersion = tempApiVersionJson;

    final Map<String, String>? tempBinaryData = tempBinaryDataJson != null
        ? Map<String, String>.from(tempBinaryDataJson)
        : null;

    final Map<String, String>? tempData =
        tempDataJson != null ? Map<String, String>.from(tempDataJson) : null;

    final bool? tempImmutable = tempImmutableJson;
    final String? tempKind = tempKindJson;
    final ObjectMeta? tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;

    return ConfigMap(
      apiVersion: tempApiVersion,
      binaryData: tempBinaryData,
      data: tempData,
      immutable: tempImmutable,
      kind: tempKind,
      metadata: tempMetadata,
    );
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

  /// Converts a [ConfigMap] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempBinaryData = binaryData;
    final tempData = data;
    final tempImmutable = immutable;
    final tempKind = kind;
    final tempMetadata = metadata;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempBinaryData != null) {
      jsonData['binaryData'] = tempBinaryData;
    }

    if (tempData != null) {
      jsonData['data'] = tempData;
    }

    if (tempImmutable != null) {
      jsonData['immutable'] = tempImmutable;
    }

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    return jsonData;
  }
}
