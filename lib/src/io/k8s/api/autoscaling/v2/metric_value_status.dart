// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../autoscaling_v2.dart';

/// MetricValueStatus holds the current value for a metric.
class MetricValueStatus {
  /// Default constructor.
  const MetricValueStatus({
    this.averageUtilization,
    this.averageValue,
    this.value,
  });

  /// Creates a [MetricValueStatus] from JSON data.
  factory MetricValueStatus.fromJson(Map<String, dynamic> json) {
    final tempAverageUtilizationJson = json['averageUtilization'];
    final tempAverageValueJson = json['averageValue'];
    final tempValueJson = json['value'];

    final int? tempAverageUtilization = tempAverageUtilizationJson;
    final String? tempAverageValue = tempAverageValueJson;
    final String? tempValue = tempValueJson;

    return MetricValueStatus(
      averageUtilization: tempAverageUtilization,
      averageValue: tempAverageValue,
      value: tempValue,
    );
  }

  /// currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.
  final int? averageUtilization;

  /// averageValue is the current value of the average of the metric across all relevant pods (as a quantity).
  final String? averageValue;

  /// value is the current value of the metric (as a quantity).
  final String? value;

  /// Converts a [MetricValueStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAverageUtilization = averageUtilization;
    final tempAverageValue = averageValue;
    final tempValue = value;

    if (tempAverageUtilization != null) {
      jsonData['averageUtilization'] = tempAverageUtilization;
    }

    if (tempAverageValue != null) {
      jsonData['averageValue'] = tempAverageValue;
    }

    if (tempValue != null) {
      jsonData['value'] = tempValue;
    }

    return jsonData;
  }
}
