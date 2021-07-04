import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/label_selector.dart';

/// ExternalMetricStatus indicates the current value of a global metric not associated with any Kubernetes object.
class ExternalMetricStatus {
  /// The main constructor.
  const ExternalMetricStatus({
    this.currentAverageValue,
    required this.currentValue,
    required this.metricName,
    this.metricSelector,
  });

  /// Creates a ExternalMetricStatus from JSON data.
  ExternalMetricStatus.fromJson(Map<String, dynamic> json)
      : this(
          currentAverageValue: json['currentAverageValue'],
          currentValue: json['currentValue'],
          metricName: json['metricName'],
          metricSelector: json['metricSelector'] != null
              ? LabelSelector.fromJson(json['metricSelector'])
              : null,
        );

  /// Creates a list of ExternalMetricStatus from JSON data.
  static List<ExternalMetricStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ExternalMetricStatus.fromJson(e)).toList();
  }

  /// currentAverageValue is the current value of metric averaged over autoscaled pods.
  final String? currentAverageValue;

  /// currentValue is the current value of the metric (as a quantity)
  final String currentValue;

  /// metricName is the name of a metric used for autoscaling in metric system.
  final String metricName;

  /// metricSelector is used to identify a specific time series within a given metric.
  final LabelSelector? metricSelector;
}
