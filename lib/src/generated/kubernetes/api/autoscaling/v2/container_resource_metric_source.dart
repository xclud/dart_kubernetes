import 'package:kubernetes/src/generated/kubernetes/api/autoscaling/v2/metric_target.dart';

/// ContainerResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  The values will be averaged together before being compared to the target.  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.  Only one "target" type should be set.
class ContainerResourceMetricSource {
  /// The main constructor.
  const ContainerResourceMetricSource({
    required this.container,
    required this.name,
    required this.target,
  });

  /// Creates a ContainerResourceMetricSource from JSON data.
  ContainerResourceMetricSource.fromJson(Map<String, dynamic> json)
      : this(
          container: json['container'],
          name: json['name'],
          target: MetricTarget.fromJson(json['target']),
        );

  /// Creates a list of ContainerResourceMetricSource from JSON data.
  static List<ContainerResourceMetricSource> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ContainerResourceMetricSource.fromJson(e)).toList();
  }

  /// Converts a ContainerResourceMetricSource instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    jsonData['container'] = container;
    jsonData['name'] = name;
    jsonData['target'] = target.toJson();
    

    return jsonData;
  }


  /// Container is the name of the container in the pods of the scaling target.
  final String container;

  /// Name is the name of the resource in question.
  final String name;

  /// Target specifies the target value for the given metric.
  final MetricTarget target;
}
