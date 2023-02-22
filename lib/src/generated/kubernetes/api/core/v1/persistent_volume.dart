import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/persistent_volume_spec.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/persistent_volume_status.dart';

/// PersistentVolume (PV) is a storage resource provisioned by an administrator. It is analogous to a node. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes.
class PersistentVolume {
  /// The main constructor.
  const PersistentVolume({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  /// Creates a PersistentVolume from JSON data.
  PersistentVolume.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: json['spec'] != null
              ? PersistentVolumeSpec.fromJson(json['spec'])
              : null,
          status: json['status'] != null
              ? PersistentVolumeStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of PersistentVolume from JSON data.
  static List<PersistentVolume> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PersistentVolume.fromJson(e)).toList();
  }

  /// Converts a PersistentVolume instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (apiVersion != null) {
      jsonData['apiVersion'] = apiVersion!;
    }
    if (kind != null) {
      jsonData['kind'] = kind!;
    }
    if (metadata != null) {
      jsonData['metadata'] = metadata!.toJson();
    }
    if (spec != null) {
      jsonData['spec'] = spec!.toJson();
    }
    if (status != null) {
      jsonData['status'] = status!.toJson();
    }

    return jsonData;
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Spec defines a specification of a persistent volume owned by the cluster. Provisioned by an administrator. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes.
  final PersistentVolumeSpec? spec;

  /// Status represents the current information/status for the persistent volume. Populated by the system. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistent-volumes.
  final PersistentVolumeStatus? status;
}
