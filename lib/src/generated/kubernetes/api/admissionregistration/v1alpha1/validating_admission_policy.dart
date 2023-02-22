import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/kubernetes/api/admissionregistration/v1alpha1/validating_admission_policy_spec.dart';

/// ValidatingAdmissionPolicy describes the definition of an admission validation policy that accepts or rejects an object without changing it.
class ValidatingAdmissionPolicy {
  /// The main constructor.
  const ValidatingAdmissionPolicy({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
  });

  /// Creates a ValidatingAdmissionPolicy from JSON data.
  ValidatingAdmissionPolicy.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null ? ObjectMeta.fromJson(json['metadata']): null,
          spec: json['spec'] != null ? ValidatingAdmissionPolicySpec.fromJson(json['spec']): null,
        );

  /// Creates a list of ValidatingAdmissionPolicy from JSON data.
  static List<ValidatingAdmissionPolicy> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ValidatingAdmissionPolicy.fromJson(e)).toList();
  }

  /// Converts a ValidatingAdmissionPolicy instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(apiVersion != null) { jsonData['apiVersion'] = apiVersion!; }
    if(kind != null) { jsonData['kind'] = kind!; }
    if(metadata != null) { jsonData['metadata'] = metadata!.toJson(); }
    if(spec != null) { jsonData['spec'] = spec!.toJson(); }
    

    return jsonData;
  }


  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Specification of the desired behavior of the ValidatingAdmissionPolicy.
  final ValidatingAdmissionPolicySpec? spec;
}
