// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.autoscaling.v2;

/// MetricTarget defines the target value, average value, or average utilization of a specific metric.
class MetricTarget {
  /// Default constructor.
  const MetricTarget({
    this.averageUtilization,
    this.averageValue,
    required this.type,
    this.value,
  });

  /// Creates a [MetricTarget] from JSON data.
  factory MetricTarget.fromJson(Map<String, dynamic> json) {
    final tempAverageUtilizationJson = json['averageUtilization'];
    final tempAverageValueJson = json['averageValue'];
    final tempTypeJson = json['type'];
    final tempValueJson = json['value'];

    final int? tempAverageUtilization = tempAverageUtilizationJson;
    final String? tempAverageValue = tempAverageValueJson;
    final String tempType = tempTypeJson;
    final String? tempValue = tempValueJson;

    return MetricTarget(
      averageUtilization: tempAverageUtilization,
      averageValue: tempAverageValue,
      type: tempType,
      value: tempValue,
    );
  }

  /// averageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods. Currently only valid for Resource metric source type.
  final int? averageUtilization;

  /// averageValue is the target value of the average of the metric across all relevant pods (as a quantity).
  final String? averageValue;

  /// type represents whether the metric type is Utilization, Value, or AverageValue.
  final String type;

  /// value is the target value of the metric (as a quantity).
  final String? value;

  /// Converts a [MetricTarget] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAverageUtilization = averageUtilization;
    final tempAverageValue = averageValue;
    final tempType = type;
    final tempValue = value;

    if (tempAverageUtilization != null) {
      jsonData['averageUtilization'] = tempAverageUtilization;
    }

    if (tempAverageValue != null) {
      jsonData['averageValue'] = tempAverageValue;
    }

    jsonData['type'] = tempType;

    if (tempValue != null) {
      jsonData['value'] = tempValue;
    }

    return jsonData;
  }
}
