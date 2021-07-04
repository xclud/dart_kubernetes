import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/label_selector.dart';

/// ExternalMetricSource indicates how to scale on a metric not associated with any Kubernetes object (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster). Exactly one "target" type should be set.
class ExternalMetricSource {
  /// The main constructor.
  const ExternalMetricSource({
    required this.metricName,
    this.metricSelector,
    this.targetAverageValue,
    this.targetValue,
  });

  /// Creates a ExternalMetricSource from JSON data.
  ExternalMetricSource.fromJson(Map<String, dynamic> json)
      : this(
          metricName: json['metricName'],
          metricSelector: json['metricSelector'] != null
              ? LabelSelector.fromJson(json['metricSelector'])
              : null,
          targetAverageValue: json['targetAverageValue'],
          targetValue: json['targetValue'],
        );

  /// Creates a list of ExternalMetricSource from JSON data.
  static List<ExternalMetricSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ExternalMetricSource.fromJson(e)).toList();
  }

  /// metricName is the name of the metric in question.
  final String metricName;

  /// metricSelector is used to identify a specific time series within a given metric.
  final LabelSelector? metricSelector;

  /// targetAverageValue is the target per-pod value of global metric (as a quantity). Mutually exclusive with TargetValue.
  final String? targetAverageValue;

  /// targetValue is the target value of the metric (as a quantity). Mutually exclusive with TargetAverageValue.
  final String? targetValue;
}
