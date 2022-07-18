/// RollingUpdateStatefulSetStrategy is used to communicate parameter for RollingUpdateStatefulSetStrategyType.
class RollingUpdateStatefulSetStrategy {
  /// The main constructor.
  const RollingUpdateStatefulSetStrategy({
    this.maxUnavailable,
    this.partition,
  });

  /// Creates a RollingUpdateStatefulSetStrategy from JSON data.
  RollingUpdateStatefulSetStrategy.fromJson(Map<String, dynamic> json)
      : this(
          maxUnavailable: json['maxUnavailable'],
          partition: json['partition'],
        );

  /// Creates a list of RollingUpdateStatefulSetStrategy from JSON data.
  static List<RollingUpdateStatefulSetStrategy> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list
        .map((e) => RollingUpdateStatefulSetStrategy.fromJson(e))
        .toList();
  }

  /// Converts a RollingUpdateStatefulSetStrategy instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (maxUnavailable != null) {
      jsonData['maxUnavailable'] = maxUnavailable!;
    }
    if (partition != null) {
      jsonData['partition'] = partition!;
    }

    return jsonData;
  }

  /// The maximum number of pods that can be unavailable during the update. Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%). Absolute number is calculated from percentage by rounding up. This can not be 0. Defaults to 1. This field is alpha-level and is only honored by servers that enable the MaxUnavailableStatefulSet feature. The field applies to all pods in the range 0 to Replicas-1. That means if there is any unavailable pod in the range 0 to Replicas-1, it will be counted towards MaxUnavailable.
  final Object? maxUnavailable;

  /// Partition indicates the ordinal at which the StatefulSet should be partitioned for updates. During a rolling update, all pods from ordinal Replicas-1 to Partition are updated. All pods from ordinal Partition-1 to 0 remain untouched. This is helpful in being able to do a canary based deployment. The default value is 0.
  final int? partition;
}
