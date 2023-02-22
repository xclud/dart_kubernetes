import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/pod_spec.dart';

/// PodTemplateSpec describes the data a pod should have when created from a template.
class PodTemplateSpec {
  /// The main constructor.
  const PodTemplateSpec({
    this.metadata,
    this.spec,
  });

  /// Creates a PodTemplateSpec from JSON data.
  PodTemplateSpec.fromJson(Map<String, dynamic> json)
      : this(
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          spec: json['spec'] != null ? PodSpec.fromJson(json['spec']) : null,
        );

  /// Creates a list of PodTemplateSpec from JSON data.
  static List<PodTemplateSpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodTemplateSpec.fromJson(e)).toList();
  }

  /// Converts a PodTemplateSpec instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (metadata != null) {
      jsonData['metadata'] = metadata!.toJson();
    }
    if (spec != null) {
      jsonData['spec'] = spec!.toJson();
    }

    return jsonData;
  }

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Specification of the desired behavior of the pod. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  final PodSpec? spec;
}
