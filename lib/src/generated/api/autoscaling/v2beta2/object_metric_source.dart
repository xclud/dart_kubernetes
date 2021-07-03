import 'package:kubernetes/src/generated/api/autoscaling/v2beta2/cross_version_object_reference.dart';
import 'package:kubernetes/src/generated/api/autoscaling/v2beta2/metric_identifier.dart';
import 'package:kubernetes/src/generated/api/autoscaling/v2beta2/metric_target.dart';

/// ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricSource {
  /// The main constructor.
  const ObjectMetricSource({
    required this.describedObject,
    required this.metric,
    required this.target,
  });

  /// Creates a ObjectMetricSource from JSON data.
  ObjectMetricSource.fromJson(Map<String, dynamic> json)
      : this(
          describedObject:
              CrossVersionObjectReference.fromJson(json['describedObject']),
          metric: MetricIdentifier.fromJson(json['metric']),
          target: MetricTarget.fromJson(json['target']),
        );

  /// Creates a list of ObjectMetricSource from JSON data.
  static List<ObjectMetricSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ObjectMetricSource.fromJson(e)).toList();
  }

  ///
  final CrossVersionObjectReference describedObject;

  /// metric identifies the target metric by name and selector
  final MetricIdentifier metric;

  /// target specifies the target value for the given metric
  final MetricTarget target;
}
