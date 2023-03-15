// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.apps.v1;

/// StatefulSetPersistentVolumeClaimRetentionPolicy describes the policy used for PVCs created from the StatefulSet VolumeClaimTemplates.
class StatefulSetPersistentVolumeClaimRetentionPolicy {
  /// Default constructor.
  const StatefulSetPersistentVolumeClaimRetentionPolicy({
    this.whenDeleted,
    this.whenScaled,
  });

  /// Creates a [StatefulSetPersistentVolumeClaimRetentionPolicy] from JSON data.
  factory StatefulSetPersistentVolumeClaimRetentionPolicy.fromJson(
      Map<String, dynamic> json) {
    final tempWhenDeletedJson = json['whenDeleted'];
    final tempWhenScaledJson = json['whenScaled'];

    final tempWhenDeleted = tempWhenDeletedJson;
    final tempWhenScaled = tempWhenScaledJson;

    return StatefulSetPersistentVolumeClaimRetentionPolicy(
      whenDeleted: tempWhenDeleted,
      whenScaled: tempWhenScaled,
    );
  }

  /// WhenDeleted specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is deleted. The default policy of `Retain` causes PVCs to not be affected by StatefulSet deletion. The `Delete` policy causes those PVCs to be deleted.
  final String? whenDeleted;

  /// WhenScaled specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is scaled down. The default policy of `Retain` causes PVCs to not be affected by a scaledown. The `Delete` policy causes the associated PVCs for any excess pods above the replica count to be deleted.
  final String? whenScaled;

  /// Converts a [StatefulSetPersistentVolumeClaimRetentionPolicy] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempWhenDeleted = whenDeleted;
    final tempWhenScaled = whenScaled;

    if (tempWhenDeleted != null) {
      jsonData['whenDeleted'] = tempWhenDeleted;
    }

    if (tempWhenScaled != null) {
      jsonData['whenScaled'] = tempWhenScaled;
    }

    return jsonData;
  }
}
