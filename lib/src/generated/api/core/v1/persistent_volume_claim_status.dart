import 'package:kubernetes/src/generated/api/core/v1/persistent_volume_claim_condition.dart';

/// PersistentVolumeClaimStatus is the current status of a persistent volume claim.
class PersistentVolumeClaimStatus {
  /// The main constructor.
  const PersistentVolumeClaimStatus({
    this.accessModes,
    this.capacity,
    this.conditions,
    this.phase,
  });

  /// Creates a PersistentVolumeClaimStatus from JSON data.
  PersistentVolumeClaimStatus.fromJson(Map<String, dynamic> json)
      : this(
          accessModes: json['accessModes'] != null
              ? List<String>.from(json['accessModes'])
              : null,
          capacity: json['capacity'] != null
              ? Map<String, String>.from(json['capacity'])
              : null,
          conditions: json['conditions'] != null
              ? PersistentVolumeClaimCondition.listFromJson(
                  (json['conditions'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          phase: json['phase'],
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

    return jsonData;
  }

  /// AccessModes contains the actual access modes the volume backing the PVC has. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1.
  final List<String>? accessModes;

  /// Represents the actual resources of the underlying volume.
  final Map<String, String>? capacity;

  /// Current Condition of persistent volume claim. If underlying persistent volume is being resized then the Condition will be set to 'ResizeStarted'.
  final List<PersistentVolumeClaimCondition>? conditions;

  /// Phase represents the current phase of PersistentVolumeClaim.
  final String? phase;
}
