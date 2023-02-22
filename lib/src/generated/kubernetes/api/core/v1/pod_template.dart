import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/pod_template_spec.dart';

/// PodTemplate describes a template for creating copies of a predefined pod.
class PodTemplate {
  /// The main constructor.
  const PodTemplate({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.template,
  });

  /// Creates a PodTemplate from JSON data.
  PodTemplate.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null ? ObjectMeta.fromJson(json['metadata']): null,
          template: json['template'] != null ? PodTemplateSpec.fromJson(json['template']): null,
        );

  /// Creates a list of PodTemplate from JSON data.
  static List<PodTemplate> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodTemplate.fromJson(e)).toList();
  }

  /// Converts a PodTemplate instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(apiVersion != null) { jsonData['apiVersion'] = apiVersion!; }
    if(kind != null) { jsonData['kind'] = kind!; }
    if(metadata != null) { jsonData['metadata'] = metadata!.toJson(); }
    if(template != null) { jsonData['template'] = template!.toJson(); }
    

    return jsonData;
  }


  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Template defines the pods that will be created from this pod template. https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  final PodTemplateSpec? template;
}
