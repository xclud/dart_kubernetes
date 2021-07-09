import 'package:kubernetes/src/generated/api/autoscaling/v2beta2/metric_value_status.dart';
import 'package:kubernetes/src/generated/api/autoscaling/v2beta2/metric_identifier.dart';

/// ExternalMetricStatus indicates the current value of a global metric not associated with any Kubernetes object.
class ExternalMetricStatus {
  /// The main constructor.
  const ExternalMetricStatus({
    required this.current,
    required this.metric,
  });

  /// Creates a ExternalMetricStatus from JSON data.
  ExternalMetricStatus.fromJson(Map<String, dynamic> json)
      : this(
          current: MetricValueStatus.fromJson(json['current']),
          metric: MetricIdentifier.fromJson(json['metric']),
        );

  /// Creates a list of ExternalMetricStatus from JSON data.
  static List<ExternalMetricStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ExternalMetricStatus.fromJson(e)).toList();
  }

  /// Converts a ExternalMetricStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['current'] = current.toJson();
    jsonData['metric'] = metric.toJson();

    return jsonData;
  }

  /// Current contains the current value for the given metric.
  final MetricValueStatus current;

  /// Metric identifies the target metric by name and selector.
  final MetricIdentifier metric;
}
