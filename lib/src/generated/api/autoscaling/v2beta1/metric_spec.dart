import 'package:kubernetes/src/generated/api/autoscaling/v2beta1/container_resource_metric_source.dart';
import 'package:kubernetes/src/generated/api/autoscaling/v2beta1/external_metric_source.dart';
import 'package:kubernetes/src/generated/api/autoscaling/v2beta1/object_metric_source.dart';
import 'package:kubernetes/src/generated/api/autoscaling/v2beta1/pods_metric_source.dart';
import 'package:kubernetes/src/generated/api/autoscaling/v2beta1/resource_metric_source.dart';

/// MetricSpec specifies how to scale based on a single metric (only `type` and one other matching field should be set at once).
class MetricSpec {
  /// The main constructor.
  const MetricSpec({
    this.containerResource,
    this.external,
    this.object,
    this.pods,
    this.resource,
    required this.type,
  });

  /// Creates a MetricSpec from JSON data.
  MetricSpec.fromJson(Map<String, dynamic> json)
      : this(
          containerResource: json['containerResource'] != null
              ? ContainerResourceMetricSource.fromJson(
                  json['containerResource'])
              : null,
          external: json['external'] != null
              ? ExternalMetricSource.fromJson(json['external'])
              : null,
          object: json['object'] != null
              ? ObjectMetricSource.fromJson(json['object'])
              : null,
          pods: json['pods'] != null
              ? PodsMetricSource.fromJson(json['pods'])
              : null,
          resource: json['resource'] != null
              ? ResourceMetricSource.fromJson(json['resource'])
              : null,
          type: json['type'],
        );

  /// Creates a list of MetricSpec from JSON data.
  static List<MetricSpec> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => MetricSpec.fromJson(e)).toList();
  }

  /// Container resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing a single container in each pod of the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source. This is an alpha feature and can be enabled by the HPAContainerMetrics feature flag.
  final ContainerResourceMetricSource? containerResource;

  /// External refers to a global metric that is not associated with any Kubernetes object. It allows autoscaling based on information coming from components running outside of cluster (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
  final ExternalMetricSource? external;

  /// Object refers to a metric describing a single kubernetes object (for example, hits-per-second on an Ingress object).
  final ObjectMetricSource? object;

  /// Pods refers to a metric describing each pod in the current scale target (for example, transactions-processed-per-second).  The values will be averaged together before being compared to the target value.
  final PodsMetricSource? pods;

  /// Resource refers to a resource metric (such as those specified in requests and limits) known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the "pods" source.
  final ResourceMetricSource? resource;

  /// Type is the type of metric source.  It should be one of "ContainerResource", "External", "Object", "Pods" or "Resource", each mapping to a matching field in the object. Note: "ContainerResource" type is available on when the feature-gate HPAContainerMetrics is enabled.
  final String type;
}
