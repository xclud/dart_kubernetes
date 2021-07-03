import 'package:kubernetes/src/generated/apimachinery/pkg/api/resource/quantity.dart';

/// ResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  The values will be averaged together before being compared to the target.  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.  Only one "target" type should be set.
class ResourceMetricSource {
  /// The main constructor.
  const ResourceMetricSource({
    required this.name,
    this.targetAverageUtilization,
    this.targetAverageValue,
  });

  /// Creates a ResourceMetricSource from JSON data.
  ResourceMetricSource.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          targetAverageUtilization: json['targetAverageUtilization'],
          targetAverageValue: json['targetAverageValue'] != null
              ? Quantity.fromJson(json['targetAverageValue'])
              : null,
        );

  /// Creates a list of ResourceMetricSource from JSON data.
  static List<ResourceMetricSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ResourceMetricSource.fromJson(e)).toList();
  }

  /// name is the name of the resource in question.
  final String name;

  /// targetAverageUtilization is the target value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.
  final int? targetAverageUtilization;

  /// targetAverageValue is the target value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the "pods" metric source type.
  final Quantity? targetAverageValue;
}
