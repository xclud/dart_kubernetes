// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a Source for provider-specific attributes.
class PersistentVolumeClaimSpec {
  /// Default constructor.
  const PersistentVolumeClaimSpec({
    this.accessModes,
    this.dataSource,
    this.dataSourceRef,
    this.resources,
    this.selector,
    this.storageClassName,
    this.volumeMode,
    this.volumeName,
  });

  /// Creates a [PersistentVolumeClaimSpec] from JSON data.
  factory PersistentVolumeClaimSpec.fromJson(Map<String, dynamic> json) {
    final tempAccessModesJson = json['accessModes'];
    final tempDataSourceJson = json['dataSource'];
    final tempDataSourceRefJson = json['dataSourceRef'];
    final tempResourcesJson = json['resources'];
    final tempSelectorJson = json['selector'];
    final tempStorageClassNameJson = json['storageClassName'];
    final tempVolumeModeJson = json['volumeMode'];
    final tempVolumeNameJson = json['volumeName'];

    final List<String>? tempAccessModes = tempAccessModesJson != null
        ? List<String>.from(tempAccessModesJson)
        : null;
    final TypedLocalObjectReference? tempDataSource = tempDataSourceJson != null
        ? TypedLocalObjectReference.fromJson(tempDataSourceJson)
        : null;
    final TypedObjectReference? tempDataSourceRef =
        tempDataSourceRefJson != null
            ? TypedObjectReference.fromJson(tempDataSourceRefJson)
            : null;
    final ResourceRequirements? tempResources = tempResourcesJson != null
        ? ResourceRequirements.fromJson(tempResourcesJson)
        : null;
    final LabelSelector? tempSelector = tempSelectorJson != null
        ? LabelSelector.fromJson(tempSelectorJson)
        : null;
    final String? tempStorageClassName = tempStorageClassNameJson;
    final String? tempVolumeMode = tempVolumeModeJson;
    final String? tempVolumeName = tempVolumeNameJson;

    return PersistentVolumeClaimSpec(
      accessModes: tempAccessModes,
      dataSource: tempDataSource,
      dataSourceRef: tempDataSourceRef,
      resources: tempResources,
      selector: tempSelector,
      storageClassName: tempStorageClassName,
      volumeMode: tempVolumeMode,
      volumeName: tempVolumeName,
    );
  }

  /// accessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1.
  final List<String>? accessModes;

  /// dataSource field can be used to specify either: * An existing VolumeSnapshot object (snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source. When the AnyVolumeDataSource feature gate is enabled, dataSource contents will be copied to dataSourceRef, and dataSourceRef contents will be copied to dataSource when dataSourceRef.namespace is not specified. If the namespace is specified, then dataSourceRef will not be copied to dataSource.
  final TypedLocalObjectReference? dataSource;

  /// dataSourceRef specifies the object from which to populate the volume with data, if a non-empty volume is desired. This may be any object from a non-empty API group (non core object) or a PersistentVolumeClaim object. When this field is specified, volume binding will only succeed if the type of the specified object matches some installed volume populator or dynamic provisioner. This field will replace the functionality of the dataSource field and as such if both fields are non-empty, they must have the same value. For backwards compatibility, when namespace isn't specified in dataSourceRef, both fields (dataSource and dataSourceRef) will be set to the same value automatically if one of them is empty and the other is non-empty. When namespace is specified in dataSourceRef, dataSource isn't set to the same value and must be empty. There are three important differences between dataSource and dataSourceRef: * While dataSource only allows two specific types of objects, dataSourceRef
  ///   allows any non-core object, as well as PersistentVolumeClaim objects.
  /// * While dataSource ignores disallowed values (dropping them), dataSourceRef
  ///   preserves all values, and generates an error if a disallowed value is
  ///   specified.
  /// * While dataSource only allows local objects, dataSourceRef allows objects
  ///   in any namespaces.
  /// (Beta) Using this field requires the AnyVolumeDataSource feature gate to be enabled. (Alpha) Using the namespace field of dataSourceRef requires the CrossNamespaceVolumeDataSource feature gate to be enabled.
  final TypedObjectReference? dataSourceRef;

  /// resources represents the minimum resources the volume should have. If RecoverVolumeExpansionFailure feature is enabled users are allowed to specify resource requirements that are lower than previous value but must still be higher than capacity recorded in the status field of the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources.
  final ResourceRequirements? resources;

  /// selector is a label query over volumes to consider for binding.
  final LabelSelector? selector;

  /// storageClassName is the name of the StorageClass required by the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1.
  final String? storageClassName;

  /// volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec.
  final String? volumeMode;

  /// volumeName is the binding reference to the PersistentVolume backing this claim.
  final String? volumeName;

  /// Converts a [PersistentVolumeClaimSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAccessModes = accessModes;
    final tempDataSource = dataSource;
    final tempDataSourceRef = dataSourceRef;
    final tempResources = resources;
    final tempSelector = selector;
    final tempStorageClassName = storageClassName;
    final tempVolumeMode = volumeMode;
    final tempVolumeName = volumeName;

    if (tempAccessModes != null) {
      jsonData['accessModes'] = tempAccessModes;
    }

    if (tempDataSource != null) {
      jsonData['dataSource'] = tempDataSource.toJson();
    }

    if (tempDataSourceRef != null) {
      jsonData['dataSourceRef'] = tempDataSourceRef.toJson();
    }

    if (tempResources != null) {
      jsonData['resources'] = tempResources.toJson();
    }

    if (tempSelector != null) {
      jsonData['selector'] = tempSelector.toJson();
    }

    if (tempStorageClassName != null) {
      jsonData['storageClassName'] = tempStorageClassName;
    }

    if (tempVolumeMode != null) {
      jsonData['volumeMode'] = tempVolumeMode;
    }

    if (tempVolumeName != null) {
      jsonData['volumeName'] = tempVolumeName;
    }

    return jsonData;
  }
}
