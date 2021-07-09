/// The node this Taint is attached to has the "effect" on any pod that does not tolerate the Taint.
class Taint {
  /// The main constructor.
  const Taint({
    required this.effect,
    required this.key,
    this.timeAdded,
    this.value,
  });

  /// Creates a Taint from JSON data.
  Taint.fromJson(Map<String, dynamic> json)
      : this(
          effect: json['effect'],
          key: json['key'],
          timeAdded: json['timeAdded'] != null
              ? DateTime.tryParse(json['timeAdded'])
              : null,
          value: json['value'],
        );

  /// Creates a list of Taint from JSON data.
  static List<Taint> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Taint.fromJson(e)).toList();
  }

  /// Converts a Taint instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['effect'] = effect;
    jsonData['key'] = key;
    if (timeAdded != null) {
      jsonData['timeAdded'] = timeAdded!.toIso8601String();
    }
    if (value != null) {
      jsonData['value'] = value!;
    }

    return jsonData;
  }

  /// Required. The effect of the taint on pods that do not tolerate the taint. Valid effects are NoSchedule, PreferNoSchedule and NoExecute.
  final String effect;

  /// Required. The taint key to be applied to a node.
  final String key;

  /// TimeAdded represents the time at which the taint was added. It is only written for NoExecute taints.
  final DateTime? timeAdded;

  /// The taint value corresponding to the taint key.
  final String? value;
}
