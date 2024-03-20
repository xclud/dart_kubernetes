// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../autoscaling_v2.dart';

/// ExternalMetricStatus indicates the current value of a global metric not associated with any Kubernetes object.
class ExternalMetricStatus {
  /// Default constructor.
  const ExternalMetricStatus({
    required this.current,
    required this.metric,
  });

  /// Creates a [ExternalMetricStatus] from JSON data.
  factory ExternalMetricStatus.fromJson(Map<String, dynamic> json) {
    final tempCurrentJson = json['current'];
    final tempMetricJson = json['metric'];

    final MetricValueStatus tempCurrent =
        MetricValueStatus.fromJson(tempCurrentJson);
    final MetricIdentifier tempMetric =
        MetricIdentifier.fromJson(tempMetricJson);

    return ExternalMetricStatus(
      current: tempCurrent,
      metric: tempMetric,
    );
  }

  /// current contains the current value for the given metric.
  final MetricValueStatus current;

  /// metric identifies the target metric by name and selector.
  final MetricIdentifier metric;

  /// Converts a [ExternalMetricStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempCurrent = current;
    final tempMetric = metric;

    jsonData['current'] = tempCurrent.toJson();

    jsonData['metric'] = tempMetric.toJson();

    return jsonData;
  }
}
