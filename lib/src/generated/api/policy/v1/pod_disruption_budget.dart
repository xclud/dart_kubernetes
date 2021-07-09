import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/policy/v1/pod_disruption_budget_spec.dart';
import 'package:kubernetes/src/generated/api/policy/v1/pod_disruption_budget_status.dart';

/// PodDisruptionBudget is an object to define the max disruption that can be caused to a collection of pods.
class PodDisruptionBudget {
  /// The main constructor.
  const PodDisruptionBudget({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  /// Creates a PodDisruptionBudget from JSON data.
  PodDisruptionBudget.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: json['spec'] != null
              ? PodDisruptionBudgetSpec.fromJson(json['spec'])
              : null,
          status: json['status'] != null
              ? PodDisruptionBudgetStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of PodDisruptionBudget from JSON data.
  static List<PodDisruptionBudget> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodDisruptionBudget.fromJson(e)).toList();
  }

  /// Converts a PodDisruptionBudget instance to JSON data.
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
    if (spec != null) {
      jsonData['spec'] = spec!.toJson();
    }
    if (status != null) {
      jsonData['status'] = status!.toJson();
    }

    return jsonData;
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Specification of the desired behavior of the PodDisruptionBudget.
  final PodDisruptionBudgetSpec? spec;

  /// Most recently observed status of the PodDisruptionBudget.
  final PodDisruptionBudgetStatus? status;
}
