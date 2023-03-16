// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.apiserverinternal.v1alpha1;

/// Storage version of a specific resource.
class StorageVersion {
  /// Default constructor.
  const StorageVersion({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
    required this.status,
  });

  /// Creates a [StorageVersion] from JSON data.
  factory StorageVersion.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempKindJson = json['kind'];
    final tempMetadataJson = json['metadata'];
    final tempSpecJson = json['spec'];
    final tempStatusJson = json['status'];

    final String? tempApiVersion = tempApiVersionJson;
    final String? tempKind = tempKindJson;
    final ObjectMeta? tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;
    final StorageVersionSpec tempSpec =
        StorageVersionSpec.fromJson(tempSpecJson);
    final StorageVersionStatus tempStatus =
        StorageVersionStatus.fromJson(tempStatusJson);

    return StorageVersion(
      apiVersion: tempApiVersion,
      kind: tempKind,
      metadata: tempMetadata,
      spec: tempSpec,
      status: tempStatus,
    );
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// The name is <group>.<resource>.
  final ObjectMeta? metadata;

  /// Spec is an empty spec. It is here to comply with Kubernetes API style.
  final StorageVersionSpec spec;

  /// API server instances report the version they can decode and the version they encode objects to when persisting objects in the backend.
  final StorageVersionStatus status;

  /// Converts a [StorageVersion] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempKind = kind;
    final tempMetadata = metadata;
    final tempSpec = spec;
    final tempStatus = status;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    jsonData['spec'] = tempSpec.toJson();

    jsonData['status'] = tempStatus.toJson();

    return jsonData;
  }
}
