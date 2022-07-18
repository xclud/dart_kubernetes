import 'package:kubernetes/src/generated/api/core/v1/persistent_volume_claim_condition.dart';

/// PersistentVolumeClaimStatus is the current status of a persistent volume claim.
class PersistentVolumeClaimStatus {
  /// The main constructor.
  const PersistentVolumeClaimStatus({
    this.accessModes,
    this.allocatedResources,
    this.capacity,
    this.conditions,
    this.phase,
    this.resizeStatus,
  });

  /// Creates a PersistentVolumeClaimStatus from JSON data.
  PersistentVolumeClaimStatus.fromJson(Map<String, dynamic> json)
      : this(
          accessModes: json['accessModes'] != null
              ? List<String>.from(json['accessModes'])
              : null,
          allocatedResources: json['allocatedResources'] != null
              ? Map<String, String>.from(json['allocatedResources'])
              : null,
          capacity: json['capacity'] != null
              ? Map<String, String>.from(json['capacity'])
              : null,
          conditions: json['conditions'] != null
              ? PersistentVolumeClaimCondition.listFromJson(
                  (json['conditions'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          phase: json['phase'],
          resizeStatus: json['resizeStatus'],
        );

  /// Creates a list of PersistentVolumeClaimStatus from JSON data.
  static List<PersistentVolumeClaimStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PersistentVolumeClaimStatus.fromJson(e)).toList();
  }

  /// Converts a PersistentVolumeClaimStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (accessModes != null) {
      jsonData['accessModes'] = accessModes!;
    }
    if (allocatedResources != null) {
      jsonData['allocatedResources'] = allocatedResources!;
    }
    if (capacity != null) {
      jsonData['capacity'] = capacity!;
    }
    if (conditions != null) {
      jsonData['conditions'] =
          conditions!.map((item) => item.toJson()).toList();
    }
    if (phase != null) {
      jsonData['phase'] = phase!;
    }
    if (resizeStatus != null) {
      jsonData['resizeStatus'] = resizeStatus!;
    }

    return jsonData;
  }

  /// AccessModes contains the actual access modes the volume backing the PVC has. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1.
  final List<String>? accessModes;

  /// AllocatedResources is the storage resource within AllocatedResources tracks the capacity allocated to a PVC. It may be larger than the actual capacity when a volume expansion operation is requested. For storage quota, the larger value from allocatedResources and PVC.spec.resources is used. If allocatedResources is not set, PVC.spec.resources alone is used for quota calculation. If a volume expansion capacity request is lowered, allocatedResources is only lowered if there are no expansion operations in progress and if the actual volume capacity is equal or lower than the requested capacity. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
  final Map<String, String>? allocatedResources;

  /// Capacity represents the actual resources of the underlying volume.
  final Map<String, String>? capacity;

  /// Conditions is the current Condition of persistent volume claim. If underlying persistent volume is being resized then the Condition will be set to 'ResizeStarted'.
  final List<PersistentVolumeClaimCondition>? conditions;

  /// Phase represents the current phase of PersistentVolumeClaim.
  ///
  ///.
  final String? phase;

  /// ResizeStatus stores status of resize operation. ResizeStatus is not set by default but when expansion is complete resizeStatus is set to empty string by resize controller or kubelet. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
  final String? resizeStatus;
}
