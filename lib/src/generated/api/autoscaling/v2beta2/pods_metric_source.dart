import 'package:kubernetes/src/generated/api/autoscaling/v2beta2/metric_identifier.dart';
import 'package:kubernetes/src/generated/api/autoscaling/v2beta2/metric_target.dart';

/// PodsMetricSource indicates how to scale on a metric describing each pod in the current scale target (for example, transactions-processed-per-second). The values will be averaged together before being compared to the target value.
class PodsMetricSource {
  /// The main constructor.
  const PodsMetricSource({
    required this.metric,
    required this.target,
  });

  /// Creates a PodsMetricSource from JSON data.
  PodsMetricSource.fromJson(Map<String, dynamic> json)
      : this(
          metric: MetricIdentifier.fromJson(json['metric']),
          target: MetricTarget.fromJson(json['target']),
        );

  /// Creates a list of PodsMetricSource from JSON data.
  static List<PodsMetricSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodsMetricSource.fromJson(e)).toList();
  }

  /// Converts a PodsMetricSource instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['metric'] = metric.toJson();
    jsonData['target'] = target.toJson();

    return jsonData;
  }

  /// Metric identifies the target metric by name and selector.
  final MetricIdentifier metric;

  /// Target specifies the target value for the given metric.
  final MetricTarget target;
}
