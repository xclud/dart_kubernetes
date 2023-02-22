import 'package:kubernetes/src/generated/kubernetes/api/core/v1/component_condition.dart';
import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/object_meta.dart';

/// ComponentStatus (and ComponentStatusList) holds the cluster validation info.
class ComponentStatus {
  /// The main constructor.
  const ComponentStatus({
    this.apiVersion,
    this.conditions,
    this.kind,
    this.metadata,
  });

  /// Creates a ComponentStatus from JSON data.
  ComponentStatus.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          conditions: json['conditions'] != null
              ? ComponentCondition.listFromJson(
                  (json['conditions'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
        );

  /// Creates a list of ComponentStatus from JSON data.
  static List<ComponentStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ComponentStatus.fromJson(e)).toList();
  }

  /// Converts a ComponentStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (apiVersion != null) {
      jsonData['apiVersion'] = apiVersion!;
    }
    if (conditions != null) {
      jsonData['conditions'] =
          conditions!.map((item) => item.toJson()).toList();
    }
    if (kind != null) {
      jsonData['kind'] = kind!;
    }
    if (metadata != null) {
      jsonData['metadata'] = metadata!.toJson();
    }

    return jsonData;
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// List of component conditions observed.
  final List<ComponentCondition>? conditions;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;
}
