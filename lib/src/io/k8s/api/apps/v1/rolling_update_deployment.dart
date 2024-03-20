// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../apps_v1.dart';

/// Spec to control the desired behavior of rolling update.
class RollingUpdateDeployment {
  /// Default constructor.
  const RollingUpdateDeployment({
    this.maxSurge,
    this.maxUnavailable,
  });

  /// Creates a [RollingUpdateDeployment] from JSON data.
  factory RollingUpdateDeployment.fromJson(Map<String, dynamic> json) {
    final tempMaxSurgeJson = json['maxSurge'];
    final tempMaxUnavailableJson = json['maxUnavailable'];

    final IntOrString? tempMaxSurge =
        tempMaxSurgeJson != null ? IntOrString(tempMaxSurgeJson) : null;
    final IntOrString? tempMaxUnavailable = tempMaxUnavailableJson != null
        ? IntOrString(tempMaxUnavailableJson)
        : null;

    return RollingUpdateDeployment(
      maxSurge: tempMaxSurge,
      maxUnavailable: tempMaxUnavailable,
    );
  }

  /// The maximum number of pods that can be scheduled above the desired number of pods. Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%). This can not be 0 if MaxUnavailable is 0. Absolute number is calculated from percentage by rounding up. Defaults to 25%. Example: when this is set to 30%, the new ReplicaSet can be scaled up immediately when the rolling update starts, such that the total number of old and new pods do not exceed 130% of desired pods. Once old pods have been killed, new ReplicaSet can be scaled up further, ensuring that total number of pods running at any time during the update is at most 130% of desired pods.
  final IntOrString? maxSurge;

  /// The maximum number of pods that can be unavailable during the update. Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%). Absolute number is calculated from percentage by rounding down. This can not be 0 if MaxSurge is 0. Defaults to 25%. Example: when this is set to 30%, the old ReplicaSet can be scaled down to 70% of desired pods immediately when the rolling update starts. Once new pods are ready, old ReplicaSet can be scaled down further, followed by scaling up the new ReplicaSet, ensuring that the total number of pods available at all times during the update is at least 70% of desired pods.
  final IntOrString? maxUnavailable;

  /// Converts a [RollingUpdateDeployment] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMaxSurge = maxSurge;
    final tempMaxUnavailable = maxUnavailable;

    if (tempMaxSurge != null) {
      jsonData['maxSurge'] = tempMaxSurge;
    }

    if (tempMaxUnavailable != null) {
      jsonData['maxUnavailable'] = tempMaxUnavailable;
    }

    return jsonData;
  }
}
