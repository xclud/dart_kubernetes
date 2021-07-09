/// HPAScalingPolicy is a single policy which must hold true for a specified past interval.
class HPAScalingPolicy {
  /// The main constructor.
  const HPAScalingPolicy({
    required this.periodSeconds,
    required this.type,
    required this.value,
  });

  /// Creates a HPAScalingPolicy from JSON data.
  HPAScalingPolicy.fromJson(Map<String, dynamic> json)
      : this(
          periodSeconds: json['periodSeconds'],
          type: json['type'],
          value: json['value'],
        );

  /// Creates a list of HPAScalingPolicy from JSON data.
  static List<HPAScalingPolicy> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => HPAScalingPolicy.fromJson(e)).toList();
  }

  /// Converts a HPAScalingPolicy instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['periodSeconds'] = periodSeconds;
    jsonData['type'] = type;
    jsonData['value'] = value;

    return jsonData;
  }

  /// PeriodSeconds specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min).
  final int periodSeconds;

  /// Type is used to specify the scaling policy.
  final String type;

  /// Value contains the amount of change which is permitted by the policy. It must be greater than zero.
  final int value;
}
