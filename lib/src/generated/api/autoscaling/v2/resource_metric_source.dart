import 'package:kubernetes/src/generated/api/autoscaling/v2/metric_target.dart';

/// ResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  The values will be averaged together before being compared to the target.  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.  Only one "target" type should be set.
class ResourceMetricSource {
  /// The main constructor.
  const ResourceMetricSource({
    required this.name,
    required this.target,
  });

  /// Creates a ResourceMetricSource from JSON data.
  ResourceMetricSource.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          target: MetricTarget.fromJson(json['target']),
        );

  /// Creates a list of ResourceMetricSource from JSON data.
  static List<ResourceMetricSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ResourceMetricSource.fromJson(e)).toList();
  }

  /// Converts a ResourceMetricSource instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['name'] = name;
    jsonData['target'] = target.toJson();

    return jsonData;
  }

  /// Name is the name of the resource in question.
  final String name;

  /// Target specifies the target value for the given metric.
  final MetricTarget target;
}
