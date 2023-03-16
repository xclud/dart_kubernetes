// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.autoscaling.v2;

/// ExternalMetricSource indicates how to scale on a metric not associated with any Kubernetes object (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
class ExternalMetricSource {
  /// Default constructor.
  const ExternalMetricSource({
    required this.metric,
    required this.target,
  });

  /// Creates a [ExternalMetricSource] from JSON data.
  factory ExternalMetricSource.fromJson(Map<String, dynamic> json) {
    final tempMetricJson = json['metric'];
    final tempTargetJson = json['target'];

    final MetricIdentifier tempMetric =
        MetricIdentifier.fromJson(tempMetricJson);
    final MetricTarget tempTarget = MetricTarget.fromJson(tempTargetJson);

    return ExternalMetricSource(
      metric: tempMetric,
      target: tempTarget,
    );
  }

  /// metric identifies the target metric by name and selector.
  final MetricIdentifier metric;

  /// target specifies the target value for the given metric.
  final MetricTarget target;

  /// Converts a [ExternalMetricSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMetric = metric;
    final tempTarget = target;

    jsonData['metric'] = tempMetric.toJson();

    jsonData['target'] = tempTarget.toJson();

    return jsonData;
  }
}
