/// PodReadinessGate contains the reference to a pod condition.
class PodReadinessGate {
  /// The main constructor.
  const PodReadinessGate({
    required this.conditionType,
  });

  /// Creates a PodReadinessGate from JSON data.
  PodReadinessGate.fromJson(Map<String, dynamic> json)
      : this(
          conditionType: json['conditionType'],
        );

  /// Creates a list of PodReadinessGate from JSON data.
  static List<PodReadinessGate> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodReadinessGate.fromJson(e)).toList();
  }

  /// ConditionType refers to a condition in the pod's condition list with matching type.
  final String conditionType;
}
