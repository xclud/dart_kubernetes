// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.autoscaling.v2;

/// HPAScalingPolicy is a single policy which must hold true for a specified past interval.
class HPAScalingPolicy {
  /// Default constructor.
  const HPAScalingPolicy({
    required this.periodSeconds,
    required this.type,
    required this.value,
  });

  /// Creates a [HPAScalingPolicy] from JSON data.
  factory HPAScalingPolicy.fromJson(Map<String, dynamic> json) {
    final tempPeriodSecondsJson = json['periodSeconds'];
    final tempTypeJson = json['type'];
    final tempValueJson = json['value'];

    final int tempPeriodSeconds = tempPeriodSecondsJson;
    final String tempType = tempTypeJson;
    final int tempValue = tempValueJson;

    return HPAScalingPolicy(
      periodSeconds: tempPeriodSeconds,
      type: tempType,
      value: tempValue,
    );
  }

  /// periodSeconds specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min).
  final int periodSeconds;

  /// type is used to specify the scaling policy.
  final String type;

  /// value contains the amount of change which is permitted by the policy. It must be greater than zero.
  final int value;

  /// Converts a [HPAScalingPolicy] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempPeriodSeconds = periodSeconds;
    final tempType = type;
    final tempValue = value;

    jsonData['periodSeconds'] = tempPeriodSeconds;

    jsonData['type'] = tempType;

    jsonData['value'] = tempValue;

    return jsonData;
  }
}
