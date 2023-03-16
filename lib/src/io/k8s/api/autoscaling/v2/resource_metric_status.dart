// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.autoscaling.v2;

/// ResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
class ResourceMetricStatus {
  /// Default constructor.
  const ResourceMetricStatus({
    required this.current,
    required this.name,
  });

  /// Creates a [ResourceMetricStatus] from JSON data.
  factory ResourceMetricStatus.fromJson(Map<String, dynamic> json) {
    final tempCurrentJson = json['current'];
    final tempNameJson = json['name'];

    final MetricValueStatus tempCurrent =
        MetricValueStatus.fromJson(tempCurrentJson);
    final String tempName = tempNameJson;

    return ResourceMetricStatus(
      current: tempCurrent,
      name: tempName,
    );
  }

  /// current contains the current value for the given metric.
  final MetricValueStatus current;

  /// Name is the name of the resource in question.
  final String name;

  /// Converts a [ResourceMetricStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempCurrent = current;
    final tempName = name;

    jsonData['current'] = tempCurrent.toJson();

    jsonData['name'] = tempName;

    return jsonData;
  }
}
