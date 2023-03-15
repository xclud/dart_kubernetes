// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.autoscaling.v2;

/// MetricSpec specifies how to scale based on a single metric (only `type` and one other matching field should be set at once).
class MetricSpec {
  /// Default constructor.
  const MetricSpec({
    this.containerResource,
    this.external,
    this.object,
    this.pods,
    this.resource,
    required this.type,
  });

  /// Creates a [MetricSpec] from JSON data.
  factory MetricSpec.fromJson(Map<String, dynamic> json) {
    final tempContainerResourceJson = json['containerResource'];
    final tempExternalJson = json['external'];
    final tempObjectJson = json['object'];
    final tempPodsJson = json['pods'];
    final tempResourceJson = json['resource'];
    final tempTypeJson = json['type'];

    final tempContainerResource = tempContainerResourceJson != null
        ? ContainerResourceMetricSource.fromJson(tempContainerResourceJson)
        : null;
    final tempExternal = tempExternalJson != null
        ? ExternalMetricSource.fromJson(tempExternalJson)
        : null;
    final tempObject = tempObjectJson != null
        ? ObjectMetricSource.fromJson(tempObjectJson)
        : null;
    final tempPods =
        tempPodsJson != null ? PodsMetricSource.fromJson(tempPodsJson) : null;
    final tempResource = tempResourceJson != null
        ? ResourceMetricSource.fromJson(tempResourceJson)
        : null;
    final tempType = tempTypeJson;

    return MetricSpec(
      containerResource: tempContainerResource,
      external: tempExternal,
      object: tempObject,
      pods: tempPods,
      resource: tempResource,
      type: tempType,
    );
  }

  /// containerResource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod of the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source. This is an alpha feature and can be enabled by the HPAContainerMetrics feature flag.
  final ContainerResourceMetricSource? containerResource;

  /// external refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
  final ExternalMetricSource? external;

  /// object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
  final ObjectMetricSource? object;

  /// pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
  final PodsMetricSource? pods;

  /// resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  final ResourceMetricSource? resource;

  /// type is the type of metric source.  It should be one of "ContainerResource", "External", "Object", "Pods" or "Resource", each mapping to a matching field in the object. Note: "ContainerResource" type is available on when the feature-gate HPAContainerMetrics is enabled.
  final String type;

  /// Converts a [MetricSpec] instance to JSON data.
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
