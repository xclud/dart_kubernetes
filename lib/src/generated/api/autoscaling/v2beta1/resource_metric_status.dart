import 'package:kubernetes/src/generated/apimachinery/pkg/api/resource/quantity.dart';

/// ResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
class ResourceMetricStatus {
  /// The main constructor.
  const ResourceMetricStatus({
    this.currentAverageUtilization,
    required this.currentAverageValue,
    required this.name,
  });

  /// Creates a ResourceMetricStatus from JSON data.
  ResourceMetricStatus.fromJson(Map<String, dynamic> json)
      : this(
          currentAverageUtilization: json['currentAverageUtilization'],
          currentAverageValue: Quantity.fromJson(json['currentAverageValue']),
          name: json['name'],
        );

  /// Creates a list of ResourceMetricStatus from JSON data.
  static List<ResourceMetricStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ResourceMetricStatus.fromJson(e)).toList();
  }

  /// currentAverageUtilization is the current value of the average of the resource metric across all relevant pods, represented as a percentage of the requested value of the resource for the pods.  It will only be present if `targetAverageValue` was set in the corresponding metric specification.
  final int? currentAverageUtilization;

  /// currentAverageValue is the current value of the average of the resource metric across all relevant pods, as a raw value (instead of as a percentage of the request), similar to the "pods" metric source type. It will always be set, regardless of the corresponding metric specification.
  final Quantity currentAverageValue;

  /// name is the name of the resource in question.
  final String name;
}
