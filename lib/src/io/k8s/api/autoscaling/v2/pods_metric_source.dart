// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.autoscaling.v2;

/// PodsMetricSource indicates how to scale on a metric describing each pod in the current scale target (for example, transactions-processed-per-second). The values will be averaged together before being compared to the target value.
class PodsMetricSource {
  /// Default constructor.
  const PodsMetricSource({
    required this.metric,
    required this.target,
  });

  /// Creates a [PodsMetricSource] from JSON data.
  factory PodsMetricSource.fromJson(Map<String, dynamic> json) {
    final tempMetricJson = json['metric'];
    final tempTargetJson = json['target'];

    final MetricIdentifier tempMetric =
        MetricIdentifier.fromJson(tempMetricJson);
    final MetricTarget tempTarget = MetricTarget.fromJson(tempTargetJson);

    return PodsMetricSource(
      metric: tempMetric,
      target: tempTarget,
    );
  }

  /// metric identifies the target metric by name and selector.
  final MetricIdentifier metric;

  /// target specifies the target value for the given metric.
  final MetricTarget target;

  /// Converts a [PodsMetricSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMetric = metric;
    final tempTarget = target;

    jsonData['metric'] = tempMetric.toJson();

    jsonData['target'] = tempTarget.toJson();

    return jsonData;
  }
}
