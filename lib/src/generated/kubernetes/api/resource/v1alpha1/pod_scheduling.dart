import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/kubernetes/api/resource/v1alpha1/pod_scheduling_spec.dart';
import 'package:kubernetes/src/generated/kubernetes/api/resource/v1alpha1/pod_scheduling_status.dart';

/// PodScheduling objects hold information that is needed to schedule a Pod with ResourceClaims that use "WaitForFirstConsumer" allocation mode.
///
/// This is an alpha type and requires enabling the DynamicResourceAllocation feature gate.
class PodScheduling {
  /// The main constructor.
  const PodScheduling({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
    this.status,
  });

  /// Creates a PodScheduling from JSON data.
  PodScheduling.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: PodSchedulingSpec.fromJson(json['spec']),
          status: json['status'] != null
              ? PodSchedulingStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of PodScheduling from JSON data.
  static List<PodScheduling> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodScheduling.fromJson(e)).toList();
  }

  /// Converts a PodScheduling instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (apiVersion != null) {
      jsonData['apiVersion'] = apiVersion!;
    }
    if (kind != null) {
      jsonData['kind'] = kind!;
    }
    if (metadata != null) {
      jsonData['metadata'] = metadata!.toJson();
    }
    jsonData['spec'] = spec.toJson();
    if (status != null) {
      jsonData['status'] = status!.toJson();
    }

    return jsonData;
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object metadata.
  final ObjectMeta? metadata;

  /// Spec describes where resources for the Pod are needed.
  final PodSchedulingSpec spec;

  /// Status describes where resources for the Pod can be allocated.
  final PodSchedulingStatus? status;
}
