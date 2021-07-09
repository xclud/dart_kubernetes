import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/core/v1/persistent_volume_claim_spec.dart';
import 'package:kubernetes/src/generated/api/core/v1/persistent_volume_claim_status.dart';

/// PersistentVolumeClaim is a user's request for and claim to a persistent volume.
class PersistentVolumeClaim {
  /// The main constructor.
  const PersistentVolumeClaim({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  /// Creates a PersistentVolumeClaim from JSON data.
  PersistentVolumeClaim.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: json['spec'] != null
              ? PersistentVolumeClaimSpec.fromJson(json['spec'])
              : null,
          status: json['status'] != null
              ? PersistentVolumeClaimStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of PersistentVolumeClaim from JSON data.
  static List<PersistentVolumeClaim> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PersistentVolumeClaim.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Spec defines the desired characteristics of a volume requested by a pod author. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims.
  final PersistentVolumeClaimSpec? spec;

  /// Status represents the current information/status of a persistent volume claim. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims.
  final PersistentVolumeClaimStatus? status;
}
