import 'package:kubernetes/src/generated/api/autoscaling/v2beta2/metric_value_status.dart';

/// ResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
class ResourceMetricStatus {
  /// The main constructor.
  const ResourceMetricStatus({
    required this.current,
    required this.name,
  });

  /// Creates a ResourceMetricStatus from JSON data.
  ResourceMetricStatus.fromJson(Map<String, dynamic> json)
      : this(
          current: MetricValueStatus.fromJson(json['current']),
          name: json['name'],
        );

  /// Creates a list of ResourceMetricStatus from JSON data.
  static List<ResourceMetricStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ResourceMetricStatus.fromJson(e)).toList();
  }

  /// Converts a ResourceMetricStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['current'] = current.toJson();
    jsonData['name'] = name;

    return jsonData;
  }

  /// Current contains the current value for the given metric.
  final MetricValueStatus current;

  /// Name is the name of the resource in question.
  final String name;
}
