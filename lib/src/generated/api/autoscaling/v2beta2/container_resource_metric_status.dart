import 'package:kubernetes/src/generated/api/autoscaling/v2beta2/metric_value_status.dart';

/// ContainerResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing a single container in each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
class ContainerResourceMetricStatus {
  /// The main constructor.
  const ContainerResourceMetricStatus({
    required this.container,
    required this.current,
    required this.name,
  });

  /// Creates a ContainerResourceMetricStatus from JSON data.
  ContainerResourceMetricStatus.fromJson(Map<String, dynamic> json)
      : this(
          container: json['container'],
          current: MetricValueStatus.fromJson(json['current']),
          name: json['name'],
        );

  /// Creates a list of ContainerResourceMetricStatus from JSON data.
  static List<ContainerResourceMetricStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ContainerResourceMetricStatus.fromJson(e)).toList();
  }

  /// Container is the name of the container in the pods of the scaling target
  final String container;

  /// current contains the current value for the given metric
  final MetricValueStatus current;

  /// Name is the name of the resource in question.
  final String name;
}
