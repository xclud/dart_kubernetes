// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../autoscaling_v2.dart';

/// ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricSource {
  /// Default constructor.
  const ObjectMetricSource({
    required this.describedObject,
    required this.metric,
    required this.target,
  });

  /// Creates a [ObjectMetricSource] from JSON data.
  factory ObjectMetricSource.fromJson(Map<String, dynamic> json) {
    final tempDescribedObjectJson = json['describedObject'];
    final tempMetricJson = json['metric'];
    final tempTargetJson = json['target'];

    final CrossVersionObjectReference tempDescribedObject =
        CrossVersionObjectReference.fromJson(tempDescribedObjectJson);
    final MetricIdentifier tempMetric =
        MetricIdentifier.fromJson(tempMetricJson);
    final MetricTarget tempTarget = MetricTarget.fromJson(tempTargetJson);

    return ObjectMetricSource(
      describedObject: tempDescribedObject,
      metric: tempMetric,
      target: tempTarget,
    );
  }

  /// describedObject specifies the descriptions of a object,such as kind,name apiVersion.
  final CrossVersionObjectReference describedObject;

  /// metric identifies the target metric by name and selector.
  final MetricIdentifier metric;

  /// target specifies the target value for the given metric.
  final MetricTarget target;

  /// Converts a [ObjectMetricSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempDescribedObject = describedObject;
    final tempMetric = metric;
    final tempTarget = target;

    jsonData['describedObject'] = tempDescribedObject.toJson();

    jsonData['metric'] = tempMetric.toJson();

    jsonData['target'] = tempTarget.toJson();

    return jsonData;
  }
}
