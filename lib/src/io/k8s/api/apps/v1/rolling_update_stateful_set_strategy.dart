// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.apps.v1;

/// RollingUpdateStatefulSetStrategy is used to communicate parameter for RollingUpdateStatefulSetStrategyType.
class RollingUpdateStatefulSetStrategy {
  /// Default constructor.
  const RollingUpdateStatefulSetStrategy({
    this.maxUnavailable,
    this.partition,
  });

  /// Creates a [RollingUpdateStatefulSetStrategy] from JSON data.
  factory RollingUpdateStatefulSetStrategy.fromJson(Map<String, dynamic> json) {
    final tempMaxUnavailableJson = json['maxUnavailable'];
    final tempPartitionJson = json['partition'];

    final String? tempMaxUnavailable = tempMaxUnavailableJson;
    final int? tempPartition = tempPartitionJson;

    return RollingUpdateStatefulSetStrategy(
      maxUnavailable: tempMaxUnavailable,
      partition: tempPartition,
    );
  }

  /// The maximum number of pods that can be unavailable during the update. Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%). Absolute number is calculated from percentage by rounding up. This can not be 0. Defaults to 1. This field is alpha-level and is only honored by servers that enable the MaxUnavailableStatefulSet feature. The field applies to all pods in the range 0 to Replicas-1. That means if there is any unavailable pod in the range 0 to Replicas-1, it will be counted towards MaxUnavailable.
  final String? maxUnavailable;

  /// Partition indicates the ordinal at which the StatefulSet should be partitioned for updates. During a rolling update, all pods from ordinal Replicas-1 to Partition are updated. All pods from ordinal Partition-1 to 0 remain untouched. This is helpful in being able to do a canary based deployment. The default value is 0.
  final int? partition;

  /// Converts a [RollingUpdateStatefulSetStrategy] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMaxUnavailable = maxUnavailable;
    final tempPartition = partition;

    if (tempMaxUnavailable != null) {
      jsonData['maxUnavailable'] = tempMaxUnavailable;
    }

    if (tempPartition != null) {
      jsonData['partition'] = tempPartition;
    }

    return jsonData;
  }
}
