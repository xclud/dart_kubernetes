import 'package:kubernetes/src/generated/kubernetes/api/autoscaling/v2/metric_identifier.dart';
import 'package:kubernetes/src/generated/kubernetes/api/autoscaling/v2/metric_target.dart';

/// ExternalMetricSource indicates how to scale on a metric not associated with any Kubernetes object (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
class ExternalMetricSource {
  /// The main constructor.
  const ExternalMetricSource({
    required this.metric,
    required this.target,
  });

  /// Creates a ExternalMetricSource from JSON data.
  ExternalMetricSource.fromJson(Map<String, dynamic> json)
      : this(
          metric: MetricIdentifier.fromJson(json['metric']),
          target: MetricTarget.fromJson(json['target']),
        );

  /// Creates a list of ExternalMetricSource from JSON data.
  static List<ExternalMetricSource> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ExternalMetricSource.fromJson(e)).toList();
  }

  /// Converts a ExternalMetricSource instance to JSON data.
  Map<String, Object> toJson()
  {
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
