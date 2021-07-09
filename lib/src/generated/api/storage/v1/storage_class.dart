import 'package:kubernetes/src/generated/api/core/v1/topology_selector_term.dart';
import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';

/// StorageClass describes the parameters for a class of storage for which PersistentVolumes can be dynamically provisioned.
///
/// StorageClasses are non-namespaced; the name of the storage class according to etcd is in ObjectMeta.Name.
class StorageClass {
  /// The main constructor.
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

  /// Creates a StorageClass from JSON data.
  StorageClass.fromJson(Map<String, dynamic> json)
      : this(
          allowVolumeExpansion: json['allowVolumeExpansion'],
          allowedTopologies: json['allowedTopologies'] != null
              ? TopologySelectorTerm.listFromJson(
                  (json['allowedTopologies'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : null,
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          mountOptions: json['mountOptions'] != null
              ? List<String>.from(json['mountOptions'])
              : null,
          parameters: json['parameters'] != null
              ? Map<String, String>.from(json['parameters'])
              : null,
          provisioner: json['provisioner'],
          reclaimPolicy: json['reclaimPolicy'],
          volumeBindingMode: json['volumeBindingMode'],
        );

  /// Creates a list of StorageClass from JSON data.
  static List<StorageClass> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => StorageClass.fromJson(e)).toList();
  }

  /// AllowVolumeExpansion shows whether the storage class allow volume expand.
  final bool? allowVolumeExpansion;

  /// Restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
  final List<TopologySelectorTerm>? allowedTopologies;

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions, e.g. ["ro", "soft"]. Not validated - mount of the PVs will simply fail if one is invalid.
  final List<String>? mountOptions;

  /// Parameters holds the parameters for the provisioner that should create volumes of this storage class.
  final Map<String, String>? parameters;

  /// Provisioner indicates the type of the provisioner.
  final String provisioner;

  /// Dynamically provisioned PersistentVolumes of this storage class are created with this reclaimPolicy. Defaults to Delete.
  final String? reclaimPolicy;

  /// VolumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
  final String? volumeBindingMode;
}
