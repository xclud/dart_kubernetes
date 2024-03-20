// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../storage_v1.dart';

/// CSIStorageCapacity stores the result of one CSI GetCapacity call. For a given StorageClass, this describes the available capacity in a particular topology segment.  This can be used when considering where to instantiate new PersistentVolumes.
///
/// For example this can express things like: - StorageClass "standard" has "1234 GiB" available in "topology.kubernetes.io/zone=us-east1" - StorageClass "localssd" has "10 GiB" available in "kubernetes.io/hostname=knode-abc123"
///
/// The following three cases all imply that no capacity is available for a certain combination: - no object exists with suitable topology and storage class name - such an object exists, but the capacity is unset - such an object exists, but the capacity is zero
///
/// The producer of these objects can decide which approach is more suitable.
///
/// They are consumed by the kube-scheduler when a CSI driver opts into capacity-aware scheduling with CSIDriverSpec.StorageCapacity. The scheduler compares the MaximumVolumeSize against the requested size of pending volumes to filter out unsuitable nodes. If MaximumVolumeSize is unset, it falls back to a comparison against the less precise Capacity. If that is also unset, the scheduler assumes that capacity is insufficient and tries some other node.
class CSIStorageCapacity {
  /// Default constructor.
  const CSIStorageCapacity({
    this.apiVersion,
    this.capacity,
    this.kind,
    this.maximumVolumeSize,
    this.metadata,
    this.nodeTopology,
    required this.storageClassName,
  });

  /// Creates a [CSIStorageCapacity] from JSON data.
  factory CSIStorageCapacity.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempCapacityJson = json['capacity'];
    final tempKindJson = json['kind'];
    final tempMaximumVolumeSizeJson = json['maximumVolumeSize'];
    final tempMetadataJson = json['metadata'];
    final tempNodeTopologyJson = json['nodeTopology'];
    final tempStorageClassNameJson = json['storageClassName'];

    final String? tempApiVersion = tempApiVersionJson;
    final String? tempCapacity = tempCapacityJson;
    final String? tempKind = tempKindJson;
    final String? tempMaximumVolumeSize = tempMaximumVolumeSizeJson;
    final ObjectMeta? tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;
    final LabelSelector? tempNodeTopology = tempNodeTopologyJson != null
        ? LabelSelector.fromJson(tempNodeTopologyJson)
        : null;
    final String tempStorageClassName = tempStorageClassNameJson;

    return CSIStorageCapacity(
      apiVersion: tempApiVersion,
      capacity: tempCapacity,
      kind: tempKind,
      maximumVolumeSize: tempMaximumVolumeSize,
      metadata: tempMetadata,
      nodeTopology: tempNodeTopology,
      storageClassName: tempStorageClassName,
    );
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// capacity is the value reported by the CSI driver in its GetCapacityResponse for a GetCapacityRequest with topology and parameters that match the previous fields.
  ///
  /// The semantic is currently (CSI spec 1.2) defined as: The available capacity, in bytes, of the storage that can be used to provision volumes. If not set, that information is currently unavailable.
  final String? capacity;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// maximumVolumeSize is the value reported by the CSI driver in its GetCapacityResponse for a GetCapacityRequest with topology and parameters that match the previous fields.
  ///
  /// This is defined since CSI spec 1.4.0 as the largest size that may be used in a CreateVolumeRequest.capacity_range.required_bytes field to create a volume with the same parameters as those in GetCapacityRequest. The corresponding value in the Kubernetes API is ResourceRequirements.Requests in a volume claim.
  final String? maximumVolumeSize;

  /// Standard object's metadata. The name has no particular meaning. It must be a DNS subdomain (dots allowed, 253 characters). To ensure that there are no conflicts with other CSI drivers on the cluster, the recommendation is to use csisc-<uuid>, a generated name, or a reverse-domain name which ends with the unique CSI driver name.
  ///
  /// Objects are namespaced.
  ///
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// nodeTopology defines which nodes have access to the storage for which capacity was reported. If not set, the storage is not accessible from any node in the cluster. If empty, the storage is accessible from all nodes. This field is immutable.
  final LabelSelector? nodeTopology;

  /// storageClassName represents the name of the StorageClass that the reported capacity applies to. It must meet the same requirements as the name of a StorageClass object (non-empty, DNS subdomain). If that object no longer exists, the CSIStorageCapacity object is obsolete and should be removed by its creator. This field is immutable.
  final String storageClassName;

  /// Converts a [CSIStorageCapacity] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempCapacity = capacity;
    final tempKind = kind;
    final tempMaximumVolumeSize = maximumVolumeSize;
    final tempMetadata = metadata;
    final tempNodeTopology = nodeTopology;
    final tempStorageClassName = storageClassName;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempCapacity != null) {
      jsonData['capacity'] = tempCapacity;
    }

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempMaximumVolumeSize != null) {
      jsonData['maximumVolumeSize'] = tempMaximumVolumeSize;
    }

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    if (tempNodeTopology != null) {
      jsonData['nodeTopology'] = tempNodeTopology.toJson();
    }

    jsonData['storageClassName'] = tempStorageClassName;

    return jsonData;
  }
}
