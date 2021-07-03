import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/flowcontrol/v1beta1/priority_level_configuration_spec.dart';
import 'package:kubernetes/src/generated/api/flowcontrol/v1beta1/priority_level_configuration_status.dart';

/// PriorityLevelConfiguration represents the configuration of a priority level.
class PriorityLevelConfiguration {
  /// The main constructor.
  const PriorityLevelConfiguration({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  /// Creates a PriorityLevelConfiguration from JSON data.
  PriorityLevelConfiguration.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: json['spec'] != null
              ? PriorityLevelConfigurationSpec.fromJson(json['spec'])
              : null,
          status: json['status'] != null
              ? PriorityLevelConfigurationStatus.fromJson(json['status'])
              : null,
        );

  /// Creates a list of PriorityLevelConfiguration from JSON data.
  static List<PriorityLevelConfiguration> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PriorityLevelConfiguration.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;

  /// `metadata` is the standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta? metadata;

  /// `spec` is the specification of the desired behavior of a "request-priority". More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final PriorityLevelConfigurationSpec? spec;

  /// `status` is the current status of a "request-priority". More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  final PriorityLevelConfigurationStatus? status;
}
