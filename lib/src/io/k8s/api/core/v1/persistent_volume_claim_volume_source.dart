// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// PersistentVolumeClaimVolumeSource references the user's PVC in the same namespace. This volume finds the bound PV and mounts that volume for the pod. A PersistentVolumeClaimVolumeSource is, essentially, a wrapper around another type of volume that is owned by someone else (the system).
class PersistentVolumeClaimVolumeSource {
  /// Default constructor.
  const PersistentVolumeClaimVolumeSource({
    required this.claimName,
    this.readOnly,
  });

  /// Creates a [PersistentVolumeClaimVolumeSource] from JSON data.
  factory PersistentVolumeClaimVolumeSource.fromJson(
      Map<String, dynamic> json) {
    final tempClaimNameJson = json['claimName'];
    final tempReadOnlyJson = json['readOnly'];

    final String tempClaimName = tempClaimNameJson;
    final bool? tempReadOnly = tempReadOnlyJson;

    return PersistentVolumeClaimVolumeSource(
      claimName: tempClaimName,
      readOnly: tempReadOnly,
    );
  }

  /// claimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims.
  final String claimName;

  /// readOnly Will force the ReadOnly setting in VolumeMounts. Default false.
  final bool? readOnly;

  /// Converts a [PersistentVolumeClaimVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempClaimName = claimName;
    final tempReadOnly = readOnly;

    jsonData['claimName'] = tempClaimName;

    if (tempReadOnly != null) {
      jsonData['readOnly'] = tempReadOnly;
    }

    return jsonData;
  }
}
