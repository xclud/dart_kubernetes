// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.autoscaling.v2;

/// ResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  The values will be averaged together before being compared to the target.  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.  Only one "target" type should be set.
class ResourceMetricSource {
  /// Default constructor.
  const ResourceMetricSource({
    required this.name,
    required this.target,
  });

  /// Creates a [ResourceMetricSource] from JSON data.
  factory ResourceMetricSource.fromJson(Map<String, dynamic> json) {
    final tempNameJson = json['name'];
    final tempTargetJson = json['target'];

    final String tempName = tempNameJson;
    final MetricTarget tempTarget = MetricTarget.fromJson(tempTargetJson);

    return ResourceMetricSource(
      name: tempName,
      target: tempTarget,
    );
  }

  /// name is the name of the resource in question.
  final String name;

  /// target specifies the target value for the given metric.
  final MetricTarget target;

  /// Converts a [ResourceMetricSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempName = name;
    final tempTarget = target;

    jsonData['name'] = tempName;

    jsonData['target'] = tempTarget.toJson();

    return jsonData;
  }
}
