import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/autoscaling/v1/horizontal_pod_autoscaler_spec.dart';
import 'package:kubernetes/src/generated/api/autoscaling/v1/horizontal_pod_autoscaler_status.dart';

/// configuration of a horizontal pod autoscaler.
class HorizontalPodAutoscaler {
  /// The main constructor.
  const HorizontalPodAutoscaler({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  /// Creates a HorizontalPodAutoscaler from JSON data.
  HorizontalPodAutoscaler.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: json['spec'] != null
              ? HorizontalPodAutoscalerSpec.fromJson(json['spec'])
              : null,
          status: json['status'] != null
              ? HorizontalPodAutoscalerStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of HorizontalPodAutoscaler from JSON data.
  static List<HorizontalPodAutoscaler> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => HorizontalPodAutoscaler.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;

  /// Standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta? metadata;

  /// behaviour of autoscaler. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  final HorizontalPodAutoscalerSpec? spec;

  /// current information about the autoscaler.
  final HorizontalPodAutoscalerStatus? status;
}
