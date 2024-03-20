// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// PersistentVolumeClaimStatus is the current status of a persistent volume claim.
class PersistentVolumeClaimStatus {
  /// Default constructor.
  const PersistentVolumeClaimStatus({
    this.accessModes,
    this.allocatedResources,
    this.capacity,
    this.conditions,
    this.phase,
    this.resizeStatus,
  });

  /// Creates a [PersistentVolumeClaimStatus] from JSON data.
  factory PersistentVolumeClaimStatus.fromJson(Map<String, dynamic> json) {
    final tempAccessModesJson = json['accessModes'];
    final tempAllocatedResourcesJson = json['allocatedResources'];
    final tempCapacityJson = json['capacity'];
    final tempConditionsJson = json['conditions'];
    final tempPhaseJson = json['phase'];
    final tempResizeStatusJson = json['resizeStatus'];

    final List<String>? tempAccessModes = tempAccessModesJson != null
        ? List<String>.from(tempAccessModesJson)
        : null;

    final Map<String, String>? tempAllocatedResources =
        tempAllocatedResourcesJson != null
            ? Map<String, String>.from(tempAllocatedResourcesJson)
            : null;

    final Map<String, String>? tempCapacity = tempCapacityJson != null
        ? Map<String, String>.from(tempCapacityJson)
        : null;

    final List<PersistentVolumeClaimCondition>? tempConditions =
        tempConditionsJson != null
            ? List<dynamic>.from(tempConditionsJson)
                .map(
                  (e) => PersistentVolumeClaimCondition.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final String? tempPhase = tempPhaseJson;
    final String? tempResizeStatus = tempResizeStatusJson;

    return PersistentVolumeClaimStatus(
      accessModes: tempAccessModes,
      allocatedResources: tempAllocatedResources,
      capacity: tempCapacity,
      conditions: tempConditions,
      phase: tempPhase,
      resizeStatus: tempResizeStatus,
    );
  }

  /// accessModes contains the actual access modes the volume backing the PVC has. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1.
  final List<String>? accessModes;

  /// allocatedResources is the storage resource within AllocatedResources tracks the capacity allocated to a PVC. It may be larger than the actual capacity when a volume expansion operation is requested. For storage quota, the larger value from allocatedResources and PVC.spec.resources is used. If allocatedResources is not set, PVC.spec.resources alone is used for quota calculation. If a volume expansion capacity request is lowered, allocatedResources is only lowered if there are no expansion operations in progress and if the actual volume capacity is equal or lower than the requested capacity. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
  final Map<String, String>? allocatedResources;

  /// capacity represents the actual resources of the underlying volume.
  final Map<String, String>? capacity;

  /// conditions is the current Condition of persistent volume claim. If underlying persistent volume is being resized then the Condition will be set to 'ResizeStarted'.
  final List<PersistentVolumeClaimCondition>? conditions;

  /// phase represents the current phase of PersistentVolumeClaim.
  final String? phase;

  /// resizeStatus stores status of resize operation. ResizeStatus is not set by default but when expansion is complete resizeStatus is set to empty string by resize controller or kubelet. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
  final String? resizeStatus;

  /// Converts a [PersistentVolumeClaimStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAccessModes = accessModes;
    final tempAllocatedResources = allocatedResources;
    final tempCapacity = capacity;
    final tempConditions = conditions;
    final tempPhase = phase;
    final tempResizeStatus = resizeStatus;

    if (tempAccessModes != null) {
      jsonData['accessModes'] = tempAccessModes;
    }

    if (tempAllocatedResources != null) {
      jsonData['allocatedResources'] = tempAllocatedResources;
    }

    if (tempCapacity != null) {
      jsonData['capacity'] = tempCapacity;
    }

    if (tempConditions != null) {
      jsonData['conditions'] =
          tempConditions.map((e) => e.toJson()).toList(growable: false);
    }

    if (tempPhase != null) {
      jsonData['phase'] = tempPhase;
    }

    if (tempResizeStatus != null) {
      jsonData['resizeStatus'] = tempResizeStatus;
    }

    return jsonData;
  }
}
