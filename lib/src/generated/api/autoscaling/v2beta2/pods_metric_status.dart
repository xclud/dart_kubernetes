import 'package:kubernetes/src/generated/api/autoscaling/v2beta2/metric_value_status.dart';
import 'package:kubernetes/src/generated/api/autoscaling/v2beta2/metric_identifier.dart';

/// PodsMetricStatus indicates the current value of a metric describing each pod in the current scale target (for example, transactions-processed-per-second).
class PodsMetricStatus {
  /// The main constructor.
  const PodsMetricStatus({
    required this.current,
    required this.metric,
  });

  /// Creates a PodsMetricStatus from JSON data.
  PodsMetricStatus.fromJson(Map<String, dynamic> json)
      : this(
          current: MetricValueStatus.fromJson(json['current']),
          metric: MetricIdentifier.fromJson(json['metric']),
        );

  /// Creates a list of PodsMetricStatus from JSON data.
  static List<PodsMetricStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodsMetricStatus.fromJson(e)).toList();
  }

  /// Current contains the current value for the given metric.
  final MetricValueStatus current;

  /// Metric identifies the target metric by name and selector.
  final MetricIdentifier metric;
}
