import 'package:kubernetes/src/generated/kubernetes/api/autoscaling/v2/metric_value_status.dart';
import 'package:kubernetes/src/generated/kubernetes/api/autoscaling/v2/cross_version_object_reference.dart';
import 'package:kubernetes/src/generated/kubernetes/api/autoscaling/v2/metric_identifier.dart';

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

  /// Converts a ObjectMetricStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['current'] = current.toJson();
    jsonData['describedObject'] = describedObject.toJson();
    jsonData['metric'] = metric.toJson();

    return jsonData;
  }

  /// Current contains the current value for the given metric.
  final MetricValueStatus current;

  /// DescribedObject specifies the descriptions of a object,such as kind,name apiVersion.
  final CrossVersionObjectReference describedObject;

  /// Metric identifies the target metric by name and selector.
  final MetricIdentifier metric;
}
