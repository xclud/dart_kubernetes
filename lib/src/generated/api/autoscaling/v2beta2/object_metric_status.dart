import 'package:kubernetes/src/generated/api/autoscaling/v2beta2/metric_value_status.dart';
import 'package:kubernetes/src/generated/api/autoscaling/v2beta2/cross_version_object_reference.dart';
import 'package:kubernetes/src/generated/api/autoscaling/v2beta2/metric_identifier.dart';

/// ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricStatus {
  /// The main constructor.
  const ObjectMetricStatus({
    required this.current,
    required this.describedObject,
    required this.metric,
  });

  /// Creates a ObjectMetricStatus from JSON data.
  ObjectMetricStatus.fromJson(Map<String, dynamic> json)
      : this(
          current: MetricValueStatus.fromJson(json['current']),
          describedObject:
              CrossVersionObjectReference.fromJson(json['describedObject']),
          metric: MetricIdentifier.fromJson(json['metric']),
        );

  /// Creates a list of ObjectMetricStatus from JSON data.
  static List<ObjectMetricStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ObjectMetricStatus.fromJson(e)).toList();
  }

  /// Current contains the current value for the given metric.
  final MetricValueStatus current;

  ///
  final CrossVersionObjectReference describedObject;

  /// Metric identifies the target metric by name and selector.
  final MetricIdentifier metric;
}
