// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../policy_v1.dart';

/// Eviction evicts a pod from its node subject to certain policies and safety constraints. This is a subresource of Pod.  A request to cause such an eviction is created by POSTing to .../pods/<pod name>/evictions.
class Eviction {
  /// Default constructor.
  const Eviction({
    this.apiVersion,
    this.deleteOptions,
    this.kind,
    this.metadata,
  });

  /// Creates a [Eviction] from JSON data.
  factory Eviction.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempDeleteOptionsJson = json['deleteOptions'];
    final tempKindJson = json['kind'];
    final tempMetadataJson = json['metadata'];

    final String? tempApiVersion = tempApiVersionJson;
    final DeleteOptions? tempDeleteOptions = tempDeleteOptionsJson != null
        ? DeleteOptions.fromJson(tempDeleteOptionsJson)
        : null;
    final String? tempKind = tempKindJson;
    final ObjectMeta? tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;

    return Eviction(
      apiVersion: tempApiVersion,
      deleteOptions: tempDeleteOptions,
      kind: tempKind,
      metadata: tempMetadata,
    );
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// DeleteOptions may be provided.
  final DeleteOptions? deleteOptions;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// ObjectMeta describes the pod that is being evicted.
  final ObjectMeta? metadata;

  /// Converts a [Eviction] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempDeleteOptions = deleteOptions;
    final tempKind = kind;
    final tempMetadata = metadata;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempDeleteOptions != null) {
      jsonData['deleteOptions'] = tempDeleteOptions.toJson();
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
