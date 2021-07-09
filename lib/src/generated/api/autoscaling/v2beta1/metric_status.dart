import 'package:kubernetes/src/generated/api/autoscaling/v2beta1/container_resource_metric_status.dart';
import 'package:kubernetes/src/generated/api/autoscaling/v2beta1/external_metric_status.dart';
import 'package:kubernetes/src/generated/api/autoscaling/v2beta1/object_metric_status.dart';
import 'package:kubernetes/src/generated/api/autoscaling/v2beta1/pods_metric_status.dart';
import 'package:kubernetes/src/generated/api/autoscaling/v2beta1/resource_metric_status.dart';

/// MetricStatus describes the last-read state of a single metric.
class MetricStatus {
  /// The main constructor.
  const MetricStatus({
    this.containerResource,
    this.external,
    this.object,
    this.pods,
    this.resource,
    required this.type,
  });

  /// Creates a MetricStatus from JSON data.
  MetricStatus.fromJson(Map<String, dynamic> json)
      : this(
          containerResource: json['containerResource'] != null
              ? ContainerResourceMetricStatus.fromJson(
                  json['containerResource'])
              : null,
          external: json['external'] != null
              ? ExternalMetricStatus.fromJson(json['external'])
              : null,
          object: json['object'] != null
              ? ObjectMetricStatus.fromJson(json['object'])
              : null,
          pods: json['pods'] != null
              ? PodsMetricStatus.fromJson(json['pods'])
              : null,
          resource: json['resource'] != null
              ? ResourceMetricStatus.fromJson(json['resource'])
              : null,
          type: json['type'],
        );

  /// Creates a list of MetricStatus from JSON data.
  static List<MetricStatus> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => MetricStatus.fromJson(e)).toList();
  }

  /// Converts a MetricStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (containerResource != null) {
      jsonData['containerResource'] = containerResource!.toJson();
    }
    if (external != null) {
      jsonData['external'] = external!.toJson();
    }
    if (object != null) {
      jsonData['object'] = object!.toJson();
    }
    if (pods != null) {
      jsonData['pods'] = pods!.toJson();
    }
    if (resource != null) {
      jsonData['resource'] = resource!.toJson();
    }
    jsonData['type'] = type;

    return jsonData;
  }

  /// Container resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  final ContainerResourceMetricStatus? containerResource;

  /// External refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
  final ExternalMetricStatus? external;

  /// Object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
  final ObjectMetricStatus? object;

  /// Pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
  final PodsMetricStatus? pods;

  /// Resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  final ResourceMetricStatus? resource;

  /// Type is the type of metric source.  It will be one of "ContainerResource", "External", "Object", "Pods" or "Resource", each corresponds to a matching field in the object. Note: "ContainerResource" type is available on when the feature-gate HPAContainerMetrics is enabled.
  final String type;
}
