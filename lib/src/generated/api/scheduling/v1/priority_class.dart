import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';

/// PriorityClass defines mapping from a priority class name to the priority integer value. The value can be any valid integer.
class PriorityClass {
  /// The main constructor.
  const PriorityClass({
    this.apiVersion,
    this.description,
    this.globalDefault,
    this.kind,
    this.metadata,
    this.preemptionPolicy,
    required this.value,
  });

  /// Creates a PriorityClass from JSON data.
  PriorityClass.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          description: json['description'],
          globalDefault: json['globalDefault'],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          preemptionPolicy: json['preemptionPolicy'],
          value: json['value'],
        );

  /// Creates a list of PriorityClass from JSON data.
  static List<PriorityClass> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PriorityClass.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Description is an arbitrary string that usually provides guidelines on when this priority class should be used.
  final String? description;

  /// GlobalDefault specifies whether this PriorityClass should be considered as the default priority for pods that do not have any priority class. Only one PriorityClass can be marked as `globalDefault`. However, if more than one PriorityClasses exists with their `globalDefault` field set to true, the smallest value of such global default PriorityClasses will be used as the default priority.
  final bool? globalDefault;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset. This field is beta-level, gated by the NonPreemptingPriority feature-gate.
  final String? preemptionPolicy;

  /// The value of this priority class. This is the actual priority that pods receive when they have the name of this class in their pod spec.
  final int value;
}
