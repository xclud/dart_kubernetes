import 'package:kubernetes/src/generated/api/autoscaling/v2/cross_version_object_reference.dart';
import 'package:kubernetes/src/generated/api/autoscaling/v2/metric_identifier.dart';
import 'package:kubernetes/src/generated/api/autoscaling/v2/metric_target.dart';

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

  /// Converts a ObjectMetricSource instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['describedObject'] = describedObject.toJson();
    jsonData['metric'] = metric.toJson();
    jsonData['target'] = target.toJson();

    return jsonData;
  }

  /// DescribedObject specifies the descriptions of a object,such as kind,name apiVersion.
  final CrossVersionObjectReference describedObject;

  /// Metric identifies the target metric by name and selector.
  final MetricIdentifier metric;

  /// Target specifies the target value for the given metric.
  final MetricTarget target;
}
