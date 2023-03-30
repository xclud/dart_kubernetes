// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.storage.v1;

/// StorageClass describes the parameters for a class of storage for which PersistentVolumes can be dynamically provisioned.
///
/// StorageClasses are non-namespaced; the name of the storage class according to etcd is in ObjectMeta.Name.
class StorageClass {
  /// Default constructor.
  const StorageClass({
    this.allowVolumeExpansion,
    this.allowedTopologies,
    this.apiVersion,
    this.kind,
    this.metadata,
    this.mountOptions,
    this.parameters,
    required this.provisioner,
    this.reclaimPolicy,
    this.volumeBindingMode,
  });

  /// Creates a [StorageClass] from JSON data.
  factory StorageClass.fromJson(Map<String, dynamic> json) {
    final tempAllowVolumeExpansionJson = json['allowVolumeExpansion'];
    final tempAllowedTopologiesJson = json['allowedTopologies'];
    final tempApiVersionJson = json['apiVersion'];
    final tempKindJson = json['kind'];
    final tempMetadataJson = json['metadata'];
    final tempMountOptionsJson = json['mountOptions'];
    final tempParametersJson = json['parameters'];
    final tempProvisionerJson = json['provisioner'];
    final tempReclaimPolicyJson = json['reclaimPolicy'];
    final tempVolumeBindingModeJson = json['volumeBindingMode'];

    final bool? tempAllowVolumeExpansion = tempAllowVolumeExpansionJson;

    final List<TopologySelectorTerm>? tempAllowedTopologies =
        tempAllowedTopologiesJson != null
            ? List<dynamic>.from(tempAllowedTopologiesJson)
                .map(
                  (e) => TopologySelectorTerm.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final String? tempApiVersion = tempApiVersionJson;
    final String? tempKind = tempKindJson;
    final ObjectMeta? tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;
    final List<String>? tempMountOptions = tempMountOptionsJson != null
        ? List<String>.from(tempMountOptionsJson)
        : null;

    final Map<String, String>? tempParameters = tempParametersJson != null
        ? Map<String, String>.from(tempParametersJson)
        : null;

    final String tempProvisioner = tempProvisionerJson;
    final String? tempReclaimPolicy = tempReclaimPolicyJson;
    final String? tempVolumeBindingMode = tempVolumeBindingModeJson;

    return StorageClass(
      allowVolumeExpansion: tempAllowVolumeExpansion,
      allowedTopologies: tempAllowedTopologies,
      apiVersion: tempApiVersion,
      kind: tempKind,
      metadata: tempMetadata,
      mountOptions: tempMountOptions,
      parameters: tempParameters,
      provisioner: tempProvisioner,
      reclaimPolicy: tempReclaimPolicy,
      volumeBindingMode: tempVolumeBindingMode,
    );
  }

  /// allowVolumeExpansion shows whether the storage class allow volume expand.
  final bool? allowVolumeExpansion;

  /// allowedTopologies restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
  final List<TopologySelectorTerm>? allowedTopologies;

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// mountOptions controls the mountOptions for dynamically provisioned PersistentVolumes of this storage class. e.g. ["ro", "soft"]. Not validated - mount of the PVs will simply fail if one is invalid.
  final List<String>? mountOptions;

  /// parameters holds the parameters for the provisioner that should create volumes of this storage class.
  final Map<String, String>? parameters;

  /// provisioner indicates the type of the provisioner.
  final String provisioner;

  /// reclaimPolicy controls the reclaimPolicy for dynamically provisioned PersistentVolumes of this storage class. Defaults to Delete.
  final String? reclaimPolicy;

  /// volumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
  final String? volumeBindingMode;

  /// Converts a [StorageClass] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAllowVolumeExpansion = allowVolumeExpansion;
    final tempAllowedTopologies = allowedTopologies;
    final tempApiVersion = apiVersion;
    final tempKind = kind;
    final tempMetadata = metadata;
    final tempMountOptions = mountOptions;
    final tempParameters = parameters;
    final tempProvisioner = provisioner;
    final tempReclaimPolicy = reclaimPolicy;
    final tempVolumeBindingMode = volumeBindingMode;

    if (tempAllowVolumeExpansion != null) {
      jsonData['allowVolumeExpansion'] = tempAllowVolumeExpansion;
    }

    if (tempAllowedTopologies != null) {
      jsonData['allowedTopologies'] =
          tempAllowedTopologies.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    if (tempMountOptions != null) {
      jsonData['mountOptions'] = tempMountOptions;
    }

    if (tempParameters != null) {
      jsonData['parameters'] = tempParameters;
    }

    jsonData['provisioner'] = tempProvisioner;

    if (tempReclaimPolicy != null) {
      jsonData['reclaimPolicy'] = tempReclaimPolicy;
    }

    if (tempVolumeBindingMode != null) {
      jsonData['volumeBindingMode'] = tempVolumeBindingMode;
    }

    return jsonData;
  }
}
