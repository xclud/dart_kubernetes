/// RollingUpdateStatefulSetStrategy is used to communicate parameter for RollingUpdateStatefulSetStrategyType.
class RollingUpdateStatefulSetStrategy {
  /// The main constructor.
  const RollingUpdateStatefulSetStrategy({
    this.partition,
  });

  /// Creates a RollingUpdateStatefulSetStrategy from JSON data.
  RollingUpdateStatefulSetStrategy.fromJson(Map<String, dynamic> json)
      : this(
          partition: json['partition'],
        );

  /// Creates a list of RollingUpdateStatefulSetStrategy from JSON data.
  static List<RollingUpdateStatefulSetStrategy> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list
        .map((e) => RollingUpdateStatefulSetStrategy.fromJson(e))
        .toList();
  }

  /// Partition indicates the ordinal at which the StatefulSet should be partitioned. Default value is 0.
  final int? partition;
}
