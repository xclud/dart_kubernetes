// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../autoscaling_v2.dart';

/// ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricStatus {
  /// Default constructor.
  const ObjectMetricStatus({
    required this.current,
    required this.describedObject,
    required this.metric,
  });

  /// Creates a [ObjectMetricStatus] from JSON data.
  factory ObjectMetricStatus.fromJson(Map<String, dynamic> json) {
    final tempCurrentJson = json['current'];
    final tempDescribedObjectJson = json['describedObject'];
    final tempMetricJson = json['metric'];

    final MetricValueStatus tempCurrent =
        MetricValueStatus.fromJson(tempCurrentJson);
    final CrossVersionObjectReference tempDescribedObject =
        CrossVersionObjectReference.fromJson(tempDescribedObjectJson);
    final MetricIdentifier tempMetric =
        MetricIdentifier.fromJson(tempMetricJson);

    return ObjectMetricStatus(
      current: tempCurrent,
      describedObject: tempDescribedObject,
      metric: tempMetric,
    );
  }

  /// current contains the current value for the given metric.
  final MetricValueStatus current;

  /// DescribedObject specifies the descriptions of a object,such as kind,name apiVersion.
  final CrossVersionObjectReference describedObject;

  /// metric identifies the target metric by name and selector.
  final MetricIdentifier metric;

  /// Converts a [ObjectMetricStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempCurrent = current;
    final tempDescribedObject = describedObject;
    final tempMetric = metric;

    jsonData['current'] = tempCurrent.toJson();

    jsonData['describedObject'] = tempDescribedObject.toJson();

    jsonData['metric'] = tempMetric.toJson();

    return jsonData;
  }
}
