import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/kubernetes/api/autoscaling/v1/scale_spec.dart';
import 'package:kubernetes/src/generated/kubernetes/api/autoscaling/v1/scale_status.dart';

/// Scale represents a scaling request for a resource.
class Scale {
  /// The main constructor.
  const Scale({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  /// Creates a Scale from JSON data.
  Scale.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null ? ObjectMeta.fromJson(json['metadata']): null,
          spec: json['spec'] != null ? ScaleSpec.fromJson(json['spec']): null,
          status: json['status'] != null ? ScaleStatus.fromJson(json['status']): null,
        );

  /// Creates a list of Scale from JSON data.
  static List<Scale> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Scale.fromJson(e)).toList();
  }

  /// Converts a Scale instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(apiVersion != null) { jsonData['apiVersion'] = apiVersion!; }
    if(kind != null) { jsonData['kind'] = kind!; }
    if(metadata != null) { jsonData['metadata'] = metadata!.toJson(); }
    if(spec != null) { jsonData['spec'] = spec!.toJson(); }
    if(status != null) { jsonData['status'] = status!.toJson(); }
    

    return jsonData;
  }


  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Defines the behavior of the scale. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  final ScaleSpec? spec;

  /// Current status of the scale. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status. Read-only.
  final ScaleStatus? status;
}
