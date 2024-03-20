// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../autoscaling_v2.dart';

/// MetricStatus describes the last-read state of a single metric.
class MetricStatus {
  /// Default constructor.
  const MetricStatus({
    this.containerResource,
    this.external,
    this.object,
    this.pods,
    this.resource,
    required this.type,
  });

  /// Creates a [MetricStatus] from JSON data.
  factory MetricStatus.fromJson(Map<String, dynamic> json) {
    final tempContainerResourceJson = json['containerResource'];
    final tempExternalJson = json['external'];
    final tempObjectJson = json['object'];
    final tempPodsJson = json['pods'];
    final tempResourceJson = json['resource'];
    final tempTypeJson = json['type'];

    final ContainerResourceMetricStatus? tempContainerResource =
        tempContainerResourceJson != null
            ? ContainerResourceMetricStatus.fromJson(tempContainerResourceJson)
            : null;
    final ExternalMetricStatus? tempExternal = tempExternalJson != null
        ? ExternalMetricStatus.fromJson(tempExternalJson)
        : null;
    final ObjectMetricStatus? tempObject = tempObjectJson != null
        ? ObjectMetricStatus.fromJson(tempObjectJson)
        : null;
    final PodsMetricStatus? tempPods =
        tempPodsJson != null ? PodsMetricStatus.fromJson(tempPodsJson) : null;
    final ResourceMetricStatus? tempResource = tempResourceJson != null
        ? ResourceMetricStatus.fromJson(tempResourceJson)
        : null;
    final String tempType = tempTypeJson;

    return MetricStatus(
      containerResource: tempContainerResource,
      external: tempExternal,
      object: tempObject,
      pods: tempPods,
      resource: tempResource,
      type: tempType,
    );
  }

  /// container resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  final ContainerResourceMetricStatus? containerResource;

  /// external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
  final ExternalMetricStatus? external;

  /// object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
  final ObjectMetricStatus? object;

  /// pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
  final PodsMetricStatus? pods;

  /// resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  final ResourceMetricStatus? resource;

  /// type is the type of metric source.  It will be one of "ContainerResource", "External", "Object", "Pods" or "Resource", each corresponds to a matching field in the object. Note: "ContainerResource" type is available on when the feature-gate HPAContainerMetrics is enabled.
  final String type;

  /// Converts a [MetricStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempContainerResource = containerResource;
    final tempExternal = external;
    final tempObject = object;
    final tempPods = pods;
    final tempResource = resource;
    final tempType = type;

    if (tempContainerResource != null) {
      jsonData['containerResource'] = tempContainerResource.toJson();
    }

    if (tempExternal != null) {
      jsonData['external'] = tempExternal.toJson();
    }

    if (tempObject != null) {
      jsonData['object'] = tempObject.toJson();
    }

    if (tempPods != null) {
      jsonData['pods'] = tempPods.toJson();
    }

    if (tempResource != null) {
      jsonData['resource'] = tempResource.toJson();
    }

    jsonData['type'] = tempType;

    return jsonData;
  }
}
