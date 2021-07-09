import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/label_selector.dart';
import 'package:kubernetes/src/generated/api/autoscaling/v2beta1/cross_version_object_reference.dart';

/// ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricStatus {
  /// The main constructor.
  const ObjectMetricStatus({
    this.averageValue,
    required this.currentValue,
    required this.metricName,
    this.selector,
    required this.target,
  });

  /// Creates a ObjectMetricStatus from JSON data.
  ObjectMetricStatus.fromJson(Map<String, dynamic> json)
      : this(
          averageValue: json['averageValue'],
          currentValue: json['currentValue'],
          metricName: json['metricName'],
          selector: json['selector'] != null
              ? LabelSelector.fromJson(json['selector'])
              : null,
          target: CrossVersionObjectReference.fromJson(json['target']),
        );

  /// Creates a list of ObjectMetricStatus from JSON data.
  static List<ObjectMetricStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ObjectMetricStatus.fromJson(e)).toList();
  }

  /// Converts a ObjectMetricStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (averageValue != null) {
      jsonData['averageValue'] = averageValue!;
    }
    jsonData['currentValue'] = currentValue;
    jsonData['metricName'] = metricName;
    if (selector != null) {
      jsonData['selector'] = selector!.toJson();
    }
    jsonData['target'] = target.toJson();

    return jsonData;
  }

  /// AverageValue is the current value of the average of the metric across all relevant pods (as a quantity).
  final String? averageValue;

  /// CurrentValue is the current value of the metric (as a quantity).
  final String currentValue;

  /// MetricName is the name of the metric in question.
  final String metricName;

  /// Selector is the string-encoded form of a standard kubernetes label selector for the given metric When set in the ObjectMetricSource, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
  final LabelSelector? selector;

  /// Target is the described Kubernetes object.
  final CrossVersionObjectReference target;
}
